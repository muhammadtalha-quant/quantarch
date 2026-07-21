{ pkgs, ... }: {
    hardware.bluetooth = {
        enable = true;
        powerOnBoot = true;
    };
    hardware.graphics = {
        enable = true;
        extraPackages = with pkgs; [
            intel-media-driver
            intel-compute-runtime
            vpl-gpu-rt
        ];
    };
}
