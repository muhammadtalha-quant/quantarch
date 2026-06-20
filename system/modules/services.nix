{...}: {
  services.xserver.enable = true;
  services.xserver.xkb = {
      layout = "us"; # Set Keyboard Layout to US
      variant = "";  # default variant
  };
  services.desktopManager.plasma6.enable = true; # intended for removal
  services.displayManager.sddm.enable = true; # intended for change into ly
}