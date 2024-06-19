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

### Gamer Module
Installs gaming applications, Wine, Winetricks, MangoHud, GameMode, and enables ZRAM for optimized gaming performance.

### Graphic Creator Module
Tailored for graphic designers and creators with tools like Pika Backup and Flatseal, enhancing productivity and data management.

### Video Maker Module
Provides essential tools for video editing and production, enhancing capabilities for video content creators.

### Audio Nerd Module
Equips your system with audio production tools and enhancements, catering to audiophiles and audio professionals.

### Photographer Module
Includes applications and tools essential for photo editing, organization, and management, ideal for photographers and photo enthusiasts.

### Office Worker Module
Enhances productivity with office suite applications and tools, ensuring a productive environment for office tasks and document management.

### Template Module
A customizable module that serves as a template for creating new modules, demonstrating the flexibility and extensibility of Fedodular.

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
Contributions to Fedodular are welcome! Feel free to create new modules or improve existing ones. Submit pull requests to share your modules with the community.

## License
This project is licensed under the MIT License.
