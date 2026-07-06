# My NixOS Configuration

A monolithic NixOS flake configuring my complete system.
It configures everything from disk partitioning and OS installation to
a complete minimal, asthetic and perfectly usable linux environment
powered by Noctalia Shell and SwayWM.  

> [!WARNING]
> This configuration is not designed for general public in mind.
> However, if you prefer to create a single user monolithic flake like so,
  you are free to use this repository as reference.
> If you are interested in reproducing my setup, then [read this](./docs/reproducing.md).

---
## Showcase ✨
* **Video**

https://github.com/user-attachments/assets/0c080d23-309a-461d-a3fa-03a06c8a212f

* **Screenshots:**

<img width="1366" height="767" alt="ss1" src="https://github.com/user-attachments/assets/396d2015-57c5-40a0-920d-c92183cb1aab" />

<img width="1366" height="768" alt="ss2" src="https://github.com/user-attachments/assets/824c8893-5e68-4efe-bc70-4e5e66fe36e3" />

---
## The Stack

This repository houses my entire system architecture, split cleanly into two distinct modules:

* **System Module:** This module handle system level configuration, which is user agnostic.
* **User Module:** Handles my user environment, managing everything that an optimized user environment needs.

> [!NOTE]
> - This configuration is highly optimized for single user setup (root user added for safety), focused on daily driving.

### Repository Structure
As I've said above this is a monolithic flake, this monolith has evolved into a non-standard (according to NixOS configuration layouts by the definitions of nix community) yet a modular flake.

This may look modular, but by execution, this is a monolithic flake. 

The repository tree looks like this, alongside is the purpose of each file.

```
 .
├──  flake.lock  # Pins exact version of packages I use, enhances reproducibility.
├──  flake.nix   # The definition of my configuration, think of it as build system script if you can't relate.
├── 󰂺 README.md   # The file that you are reading now.
├──  system      # A module that handles system-wide configuration that is applied to every user on the system.
│   ├──  configuration.nix                 # This is the main starting point of system configuration.
│   ├──  disko.nix                         # Declarative disk partioning.
│   ├──  hardware-configuration.nix        # Declarative hardware configuration (i); kernel modules + cpu architecture. (not portable).
│   └──  modules # A directory that contains submodules of the system module.
│       ├──  audio.nix                     # Declarative audio management.
│       ├──  bootloader.nix                # Declarative bootloader configuration.
│       ├──  firewall.nix                  # Declarative firewall configuration.
│       ├──  hardware.nix                  # Declarative hardware configuration (ii); manages the hardware attribute set.
│       ├──  i18n.nix                      # Declarative internationalisation configuration.
│       ├──  networking.nix                # Declarative network settings.
│       ├──  nh.nix                        # Declarative nh (nix helper) configuration.
│       ├──  nix.nix                       # Declarative configuration of nix attribute set.
│       ├──  packages.nix                  # Declarative package list; packages to be installed for all users.
│       ├──  programs.nix                  # Declarative configuration of programs attribute set.
│       ├──  services.nix                  # Declarative configuration system services.
│       ├──  users.nix                     # Declarative configuration of users.
│       └──  xdg.nix                       # Declarative configuration of xdg configuration. 
└──  user        # A module that handle user level configuration. 
    ├──  home.nix                          # This is the main starting point of user configuration.
    └──  modules # A directory that handles user-wide configuration.
        ├──  btop.nix                      # Declarative configuration of btop resource monitor.   
        ├──  cava.nix                      # Declarative configuration of cava audio visualizer.
        ├──  eza.nix                       # Declarative configuration of eza, the modern ls replacement.
        ├──  fastfetch.nix                 # Declarative configuration of fastfetch.
        ├──  fish.nix                      # Declarative configuration of fish shell, the default shell for main user.
        ├──  kitty.nix                     # Declarative configuration of the kitty terminal emulator.
        ├──  noctalia.nix                  # Declarative configuration of noctalia shell v5.
        ├──  nvf-nvim.nix                  # Declarative configuration of neovim via the NVF framework.
        ├──  packages.nix                  # Declarative package list; packages to be installed for the user.
        ├──  starship.nix                  # Declarative configuration of starship, the shell prompt.
        ├──  styling.nix                   # Declarative configuration for app theming, icon packs and cursor themes.
        ├──  sway.nix                      # Declarative configuration for sway window manager.
        ├──  vcs.nix                       # Declarative configuration for version control systems, mainly git and github-cli.
        ├──  wmutils.nix                   # Declarative configuration for some additional utilities to enhance WM experience.
        ├──  yazi.nix                      # Declarative configuration for yazi, the blazing fast terminal FM.
        └──  zathura.nix                   # Declarative configuration for zathura pdf viewer.
```

---
## LICENSE 
MIT
