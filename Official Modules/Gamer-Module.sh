#!/bin/bash

# Function to print the status
print_status() {
    echo
    echo "===================================="
    echo "$1"
    echo "===================================="
    echo
}

# Function to uninstall applications and configurations
uninstall() {
    # Uninstall gaming-focused applications via Flatpak
    print_status "Uninstalling gaming-focused applications..."
    flatpak uninstall -y flathub com.valvesoftware.Steam
    flatpak uninstall -y flathub com.discordapp.Discord
    flatpak uninstall -y flathub com.obsproject.Studio
    flatpak uninstall -y flathub com.mojang.Minecraft
    flatpak uninstall -y flathub net.lutris.Lutris
    flatpak uninstall -y flathub com.heroicgameslauncher.hgl
    flatpak uninstall -y flathub io.openarena.OpenArena

    # Uninstall Wine and Winetricks
    print_status "Uninstalling Wine and Winetricks..."
    sudo dnf remove -y wine winetricks

    # Uninstall MangoHud
    print_status "Uninstalling MangoHud..."
    sudo dnf remove -y mangohud
    sudo dnf copr remove atim/mangohud -y

    # Uninstall GameMode
    print_status "Uninstalling GameMode..."
    sudo dnf remove -y gamemode feral-gamemode

    # Disable and remove ZRAM
    print_status "Disabling ZRAM..."
    sudo systemctl stop systemd-udev-trigger
    sudo rm /etc/udev/rules.d/99-zram.rules
    sudo rm /etc/modules-load.d/zram.conf
    sudo dnf remove -y zram-generator

    # Print completion message
    print_status "Uninstallation complete."
}

# Check if uninstall option is provided
if [[ "$1" == "-u" ]]; then
    uninstall
    exit 0
fi

# Normal installation steps

# Update system
print_status "Updating system..."
sudo dnf update -y

# Install gaming-focused applications via Flatpak
print_status "Installing gaming-focused applications via Flatpak..."
flatpak install -y flathub com.valvesoftware.Steam
flatpak install -y flathub com.discordapp.Discord
flatpak install -y flathub com.obsproject.Studio
flatpak install -y flathub com.mojang.Minecraft
flatpak install -y flathub net.lutris.Lutris
flatpak install -y flathub com.heroicgameslauncher.hgl
flatpak install -y flathub io.openarena.OpenArena

# Install Wine and Winetricks
print_status "Installing Wine and Winetricks..."
sudo dnf install -y wine winetricks

# Install MangoHud
print_status "Installing MangoHud..."
sudo dnf copr enable atim/mangohud -y
sudo dnf install -y mangohud

# Install GameMode
print_status "Installing GameMode..."
sudo dnf install -y gamemode feral-gamemode

# Enable ZRAM
print_status "Enabling ZRAM..."
sudo dnf install -y zram-generator
echo "zram" | sudo tee -a /etc/modules-load.d/zram.conf
echo "options zram num_devices=1" | sudo tee -a /etc/modprobe.d/zram.conf
echo "KERNEL==\"zram0\", ATTR{disksize}=\"4G\", RUN=\"/usr/bin/mkswap /dev/zram0\", RUN+=\"/usr/sbin/swapon /dev/zram0\"" | sudo tee -a /etc/udev/rules.d/99-zram.rules
sudo systemctl daemon-reload
sudo systemctl start systemd-udev-trigger

# Print completion message
print_status "Gamer module setup complete. Please restart your system for all changes to take effect."
