{
    services = {
        power-profiles-daemon.enable = true;
        upower.enable = true;
        # Uncomment to enable fingerprint login support.
        #fprintd.enable = true;
        udisks2.enable = true;
        pulseaudio.enable = false;
        pipewire = {
            enable = true;
            alsa.enable = true;
            alsa.support32Bit = true;
            pulse.enable = true;
        };
        displayManager.dms-greeter = {
            enable = true;
            compositor.name = "niri";
            configHome = "/home/muhammadtalha";
            logs = {
                save = true;
                path = "/tmp/dms-greeter.log";
            };
        };

    };
    systemd.user.services.niri-flake-polkit.enable = false;
}
