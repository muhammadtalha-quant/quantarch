{...}: {
  services.power-profiles-daemon.enable = true;
  services.upower.enable = true;
  services.gvfs.enable = true;
  services.udisks2.enable = true;
  services.dbus.enable = true;
  services.tumbler.enable = true;
}
