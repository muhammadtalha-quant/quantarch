{
    programs.dank-material-shell = {
        enable = true;
        systemd = {
            enable = true;
            restartIfChanged = true;
        };
        enableSystemMonitoring = true;
        enableAudioWavelength = true;
        niri.includes.enable = false;
        niri = {
            enableKeybinds = true;
        };
    };
}
