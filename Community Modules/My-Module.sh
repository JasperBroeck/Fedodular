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
flatpak uninstall flathub org.localsend.localsend_app -y
flatpak uninstall flathub org.audacityteam.Audacity -y
flatpak uninstall flathub com.obsproject.Studio -y
flatpak uninstall flathub md.obsidian.Obsidian -y
flatpak uninstall flathub org.darktable.Darktable -y
flatpak uninstall flathub org.musescore.MuseScore -y
flatpak uninstall flathub org.kde.kdenlive -y
flatpak uninstall flathub com.icons8.Lunacy -y
flatpak uninstall flathub com.visualstudio.code -y
flatpak uninstall flathub io.github.ec_.Quake3e.OpenArena -y
flatpak uninstall flathub com.mojang.Minecraft -y
flatpak uninstall flathub com.rtosta.zapzap -y
flatpak uninstall flathub io.gitlab.idevecore.Pomodoro -y

cd Downloads
rm -r Fluent-icon-theme
rm -r Graphite-gtk-theme

# Check if uninstall option is provided
if [[ "$1" == "-u" ]]; then
    uninstall
    exit 0
fi

# Update system
print_status "Updating system..."
sudo dnf update -y

# Function to install applications and configurations
flatpak install flathub org.localsend.localsend_app -y
flatpak install flathub org.audacityteam.Audacity -y
flatpak install flathub com.obsproject.Studio -y
flatpak install flathub md.obsidian.Obsidian -y
flatpak install flathub org.darktable.Darktable -y
flatpak install flathub org.musescore.MuseScore -y
flatpak install flathub org.kde.kdenlive -y
flatpak install flathub com.icons8.Lunacy -y
flatpak install flathub com.visualstudio.code -y
flatpak install flathub io.github.ec_.Quake3e.OpenArena -y
flatpak install flathub com.mojang.Minecraft -y
flatpak install flathub com.rtosta.zapzap -y
flatpak install flathub io.gitlab.idevecore.Pomodoro -y

cd Downloads
git clone https://github.com/vinceliuice/Graphite-gtk-theme
git clone https://github.com/vinceliuice/Fluent-icon-theme

# Print completion message
print_status "Your module setup complete. Please restart your system for all changes to take effect."

