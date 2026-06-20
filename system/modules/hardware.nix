{...}: {
  hardware.bluetooth.enable = true;
  # they are services, but they work with hardware
  services.libinput.enable = true;
  services.pcscd.enable = true;
}