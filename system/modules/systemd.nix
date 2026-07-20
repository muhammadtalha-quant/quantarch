{ pkgs, ... }: {
    systemd = {
        services = {
            "tmux-start@" = {
                description = "Automatically start tmux server, without creating sessions";
                after = [ "network.target" ];

                serviceConfig = {
                    Type = "forking";
                    User = "%i";
                    ExecStart = "${pkgs.tmux}/bin/tmux start-server";
                    ExecStop = "${pkgs.tmux}/bin/tmux kill-server";
                    Restart = "on-failure";
                };
            };
        };
        targets.multi-user.wants = [
            "tmux-start@muhammadtalha.service"
        ];
    };
}
