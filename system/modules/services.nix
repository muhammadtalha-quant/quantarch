{ ... }: {
    services = {
        power-profiles-daemon.enable = true;
        upower.enable = true;
        udisks2.enable = true;
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
}
