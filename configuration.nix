{ config, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
  ];

  hardware.bluetooth.enable = true;

  boot = {
    loader.systemd-boot.enable = true;
    loader.efi.canTouchEfiVariables = true;
    kernelPackages = pkgs.linuxPackages_latest;
  };

  networking = {
    # My System Host Name
    hostName = "quantnix";
    # Enable Wifi Support
    networkmanager.enable = true;
    # Firewall Settings
    firewall = {
      enable = true;
      allowedTCPPorts = [ 53317 ]; 
      allowedUDPPorts = [ 53317 ];
    };
  };
  
  time.timeZone = "Asia/Karachi";

  # Internationalisaton Settings
  i18n.defaultLocale = "en_US.UTF-8";
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_US.UTF-8";
    LC_IDENTIFICATION = "en_US.UTF-8";
    LC_MEASUREMENT = "en_US.UTF-8";
    LC_MONETARY = "en_US.UTF-8";
    LC_NAME = "en_US.UTF-8";
    LC_NUMERIC = "en_US.UTF-8";
    LC_PAPER = "en_US.UTF-8";
    LC_TELEPHONE = "en_US.UTF-8";
    LC_TIME = "en_US.UTF-8";
  };

  services = {
    # X Server Settings
    xserver = {
      enable = true; # Enable the X Server
      # Keyboard settings for X Server
      xkb = {  
        layout = "us"; # Set Keyboard Layout to US
        variant = "";  # default variant
      };
    };
    # Enable SDDM
    displayManager.sddm.enable = true;
    # Enable KDE
    desktopManager.plasma6.enable = true;
    # Disable PulseAudio 
    pulseaudio.enable = false;
    # Pipewire Settings
    pipewire = {
      enable = true; # Enable Pipewire
      alsa.enable = true; # Enable Alsa
      alsa.support32Bit = true; # Enable 32bit support for alsa
      pulse.enable = true; # Enable Pipewire Pulse
    };
    # Enable libinput
    libinput.enable = true;
    # Enable pcscd
    pcscd.enable = true;
  };


  security.rtkit.enable = true;

  programs = {
	  hyprland = {
      enable = true;
      xwayland.enable = true;
      withUWSM = false;
      portalPackage = pkgs.xdg-desktop-portal-hyprland;
    };
	  fish.enable = true;
	  starship = {
	  enable = true;
	    presets = [ "gruvbox-rainbow" ];
	  };
    gnupg.agent = {
      enable = true;
      pinentryPackage = pkgs.pinentry-curses;
      enableSSHSupport = true;
    };
  };
  users.mutableUsers = false;
  users.users.root.hashedPassword = "$y$j9T$hbguh04FZh1JSM8nYVXS0.$9yG.bzlFyYT2NcDEKwxPmZuyN1Cz91DMpyewyfQAyM5";
  users.users.muhammadtalha = {
    isNormalUser = true;
    description = "Muhammad Talha";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.fish;
    hashedPassword = "$y$j9T$hbguh04FZh1JSM8nYVXS0.$9yG.bzlFyYT2NcDEKwxPmZuyN1Cz91DMpyewyfQAyM5";
  };
  
  nixpkgs.config.allowUnfree = true;

  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
    newcomputermodern
  ];
  environment.systemPackages = with pkgs; [
	  git
	  lazygit
	  gh
    neovim
    fastfetch
	  kitty
    nixd
    alejandra
  ];
  nix.settings.experimental-features = [ "nix-command" "flakes"];	
  system.stateVersion = "26.05";
}
