{ inputs, pkgs, ... }: {
    programs.dank-material-shell = {
        enable = true;
        enableSystemMonitoring = true;
        dgop.package = inputs.dgop.packages.${pkgs.stdenv.hostPlatform.system}.default;
        niri.includes.enable = false;
        niri = {
            enableKeybinds = true; # Sets static preset keybinds
            enableSpawn = true; # Auto-start DMS with niri, if enabled
        };
    };
}
