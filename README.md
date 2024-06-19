# Fedodular

## Table of Contents
- [Introduction](#introduction)
- [Why Fedodular?](#why-fedodular)
- [Key Features](#key-features)
- [Modules](#modules)
  - [Gamer Module](#gamer-module)
  - [Graphic Creator Module](#graphic-creator-module)
  - [Video Maker Module](#video-maker-module)
  - [Audio Nerd Module](#audio-nerd-module)
  - [Photographer Module](#photographer-module)
  - [Office Worker Module](#office-worker-module)
  - [Template Module](#template-module)
- [Getting Started](#getting-started)
- [Contributions](#contributions)
- [License](#license)

---

## Introduction
Fedodular is a modular system designed to enhance your Fedora installation through customizable modules (scripts). Each module serves to expand system functionality or install specific applications. Modules can be easily installed and uninstalled using simple command-line arguments, ensuring flexibility and ease of maintenance.

## Why Fedodular?
Fedodular was created out of a personal interest in Linux customization and modularity. It provides users with the ability to tailor their Fedora systems without the complexity of creating a custom ISO. This approach simplifies the customization process and encourages community involvement, allowing anyone to create and share their own modules.

## Key Features
- **Modular Installation**: Install additional functionalities or applications using modular scripts.
- **Easy Uninstallation**: Modules can be removed effortlessly with the `-u` argument, ensuring a clean system state.
- **Community Driven**: Encourages community contributions and customization through modular scripts.
- **Built for Fedora**: Designed to complement the straightforward installation process of Fedora without requiring a custom ISO.

## Modules
So to start, just run the fedodular.sh script to install all the basics:

- Gnome extension manager
- Gnome tweaks
- Removes all the crap

Then you just choose your modules and install their scripts aswell. If you have two modules with overlapping apps, the scripts will skip apps that are already installed so, no worries!

- Gamer Module
  - Steam
  - Discord
  - OBS Studio
  - Minecraft
  - Lutris
  - Heroic Launcher
  - OpenArena
  - Wine & Winetricks
- Graphic Creator Module
  - GIMP
  - InkScape
  - Krita
- Video Maker Module
  - Kdenlive
  - OBS Studio
  - Shotcut
  - Openshot
- Audio Nerd Module
  - Audacity
  - Decibels
  - Ardour
- Photographer Module
  - GIMP
  - Darktable
  - Photopea
  - Photometry
  - RawTherapee
- Office Worker Module
  - WPS Office
  - LibreOffice
  - Apostrophe
  - Paper
- Template Module
  - Nothing, just an outline to build your own module

## Getting Started
To start using Fedodular, clone the repository and run modules as needed. Use the `-u` option to uninstall modules when desired.

### Example Usage
```bash
# Install the Gamer module
./fedodular-gamer.sh

# Uninstall the Gamer module
./fedodular-gamer.sh -u
```
## Contributions
Contributions to Fedodular are welcome! Feel free to create new modules using the [template module](#template-module) or improve existing ones. Submit pull requests to share your modules with the community.

## License
This project is licensed under the MIT License.
