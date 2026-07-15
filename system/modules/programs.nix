{ pkgs, ... }: {
    programs = {
        niri = {
            enable = true;
            package = pkgs.niri;
        };
        fish.enable = true;
        gnupg.agent = {
            enable = true;
            pinentryPackage = pkgs.pinentry-gnome3;
            enableSSHSupport = true;
            settings = {
                default-cache-ttl = 28800;
                max-cache-ttl = 28800;
            };
        };
        gpu-screen-recorder.enable = true;
        dconf.enable = true;
    };
}
