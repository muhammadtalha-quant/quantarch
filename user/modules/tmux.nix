{ pkgs, inputs, ... }: {
    programs.tmux = {
        enable = true;
        aggressiveResize = true;
        keyMode = "vi";
        prefix = "C-b";
        mouse = true;
        disableConfirmationPrompt = true;
        clock24 = false;
        sensibleOnTop = true;
        tmuxp.enable = true;
        extraConfig = ''
            set-option -g renumber-windows on
        '';
        plugins = with pkgs.tmuxPlugins; [
            {
                plugin = sensible;
            }
            {
                plugin = resurrect;
            }
            {
                plugin = continuum;
                extraConfig = ''
                    set -g @continuum-save-interval '15'
                    set -g @continuum-restore 'on'
                '';
            }
            {
                plugin = yank;
                extraConfig = ''
                    set -g @yank_selection_mouse 'clipboard'
                '';
            }
            {
                plugin = tmux-fzf;
            }
        ];
    };
}
