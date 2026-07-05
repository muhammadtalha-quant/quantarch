# My NixOS Configuration
A monolithic NixOS flake configuring my complete system. It configures everything from disk partitioning and OS installation to a complete minimal, asthetic and perfectly usable linux environment powered by [Noctalia Shell v5](https://noctalia.dev) and [SwayWM](https://swaywm.org).

> [!NOTE]
> Everything is written in the Nix Expression Language, I generally don't like foreign language injection but sometimes I had to do so. 

## Showcase ✨

### Video
https://github.com/user-attachments/assets/0c080d23-309a-461d-a3fa-03a06c8a212f
### Screenshots:
<img width="1366" height="767" alt="ss1" src="https://github.com/user-attachments/assets/396d2015-57c5-40a0-920d-c92183cb1aab" />
<img width="1366" height="768" alt="ss2" src="https://github.com/user-attachments/assets/824c8893-5e68-4efe-bc70-4e5e66fe36e3" />

---
## 🛠️ The Stack

This repository houses my entire system architecture, split cleanly into two distinct layers:

* **❄️ Nix Flakes:** Manages the core operating system, hardware configurations, system-level daemons, kernel parameters and home-manager.
* **🏠 Home Manager:** Handles my user environment, managing everything from my shell aliases and git configs to full application setups.

---

## LICENSE 
MIT
