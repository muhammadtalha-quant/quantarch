{pkgs, ...}: {
  hardware.bluetooth = {
    enable = true;
    powerOnBoot = true;
  };
  hardware.graphics = {
    enable = true;
    extraPackages = with pkgs; [
      intel-media-driver
      intel-vaapi-driver 
      vpl-gpu-rt
    ];
  };
  # they are services, but they work with hardware
  services.libinput.enable = true;
  services.pcscd.enable = true;
}