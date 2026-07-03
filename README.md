# My NixOS Configuration
A monolithic NixOS flake configuring my complete system. It configures everything from disk partitioning and OS installation to a complete minimal, asthetic and perfectly usable linux environment powered by [Noctalia Shell v5](https://noctalia.dev) and [SwayWM](https://swaywm.org).

> [!NOTE]
> Everything is written in the Nix Expression Language, I generally don't like foreign language injection but sometimes I had to do so. 

---
## 🛠️ The Stack

This repository houses my entire system architecture, split cleanly into two distinct layers:

* **❄️ Nix Flakes:** Manages the core operating system, hardware configurations, system-level daemons, kernel parameters and home-manager.
* **🏠 Home Manager:** Handles my user environment, managing everything from my shell aliases and git configs to full application setups.

---

## LICENSE 
MIT
