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
            customConfig = ''
                hotkey-overlay {
                    skip-at-startup
                }

                environment {
                    DMS_RUN_GREETER "1"
                    XCURSOR_THEME "Capitaine Cursors (Gruvbox)"
                    XCURSOR_SIZE "26"
                }
            '';
            configHome = "/home/muhammadtalha";
            logs = {
                save = true;
                path = "/tmp/dms-greeter.log";
            };
        };

    };
    systemd.user.services.niri-flake-polkit.enable = false;
}
