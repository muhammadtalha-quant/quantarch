{
    programs.dank-material-shell = {
        enable = true;
        systemd = {
            enable = true;
            restartIfChanged = true;
        };
        enableSystemMonitoring = true;
        enableAudioWavelength = true;
        niri.includes = {
            enable = true;
            override = false;
            originalFileName = "hm";
            filesToInclude = [
                "alttab"
                "binds"
                "colors"
                "layout"
                "wpblur"
                "cursor"
                "windowrules"
                "outputs"
            ];
        };
    };
}
