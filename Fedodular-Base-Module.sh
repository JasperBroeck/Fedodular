#!/bin/bash

# Function to print the status
print_status() {
    echo
    echo "===================================="
    echo "$1"
    echo "===================================="
    echo
}

# Update system
print_status "Updating system..."
sudo dnf update -y

# Install applications via Flatpak
print_status "Installing applications via Flatpak..."
flatpak install -y flathub com.microsoft.Edge
flatpak install -y flathub org.gnome.World.PikaBackup
flatpak install -y flathub com.github.tchx84.Flatseal

# Install Extension Manager
print_status "Installing Extension Manager..."
sudo dnf install -y gnome-extensions-app
flatpak install flathub com.mattjakeman.ExtensionManager
sudo dnf install -y gnome-tweaks

# Remove unwanted applications
print_status "Removing unwanted applications..."
sudo dnf remove -y cheese gnome-contacts gnome-weather gnome-clocks gnome-maps mediawriter gnome-boxes yelp rhythmbox gnome-tour gnome-characters gnome-connections firefox

# Install GNOME Shell extensions
print_status "Installing GNOME Shell extensions..."

# Define extension URLs
extensions=(
    "https://extensions.gnome.org/extension-data/dash-to-paneljderose9.github.com.v55.shell-extension.zip"
    "https://extensions.gnome.org/extension-data/blurmayschell.aunetx.v24.shell-extension.zip"
    "https://extensions.gnome.org/extension-data/wintile-beyond-stuartlangridge.v1.shell-extension.zip"
    "https://extensions.gnome.org/extension-data/apphider-thomasb.v6.shell-extension.zip"
    "https://extensions.gnome.org/extension-data/vitals-CoreCoding.v52.shell-extension.zip"
    "https://extensions.gnome.org/extension-data/ding.rastersoft.com.v44.shell-extension.zip"
)

# Directory for temporary extension files
mkdir -p ~/.local/share/gnome-shell/extensions/tmp

for url in "${extensions[@]}"; do
    file=$(basename "$url")
    wget -O ~/.local/share/gnome-shell/extensions/tmp/$file "$url"
    gnome-extensions install --user ~/.local/share/gnome-shell/extensions/tmp/$file
done

# Enable GNOME Shell extensions
print_status "Enabling GNOME Shell extensions..."
gnome-extensions enable dash-to-panel@jderose9.github.com
gnome-extensions enable blur-my-shell@aunetx
gnome-extensions enable wintile-beyond@stuartlangridge
gnome-extensions enable apphider@thomasb
gnome-extensions enable vitals@CoreCoding
gnome-extensions enable ding@rastersoft.com

# Clean up temporary files
rm -rf ~/.local/share/gnome-shell/extensions/tmp

# Print completion message
print_status "Fedodular setup complete. Please restart your system for all changes to take effect."

