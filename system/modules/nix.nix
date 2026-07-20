{
    nix = {
        settings = {
            experimental-features = [
                "nix-command"
                "flakes"
            ];
            trusted-users = [
                "root"
                "muhammadtalha"
            ];
        };
        optimise = {
            automatic = true;
            dates = [ "09:00:00" ];
        };
    };
}
