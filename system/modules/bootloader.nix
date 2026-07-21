{ pkgs, ... }: {
    boot = {
        loader.systemd-boot.enable = true;
        loader.efi.canTouchEfiVariables = true;
        kernelPackages = pkgs.linuxPackages_latest;
        kernelParams = [
            "i915.enable_guc=3"
        ];
    };
}
