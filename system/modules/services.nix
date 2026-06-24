{...}: {
  services.xserver.enable = true;
  services.xserver.xkb = {
      layout = "us"; # Set Keyboard Layout to US
      variant = "";  # default variant
  };
  services.power-profiles-daemon.enable = true;
  services.upower.enable = true;
  services.displayManager.ly.enable = true; 
}
