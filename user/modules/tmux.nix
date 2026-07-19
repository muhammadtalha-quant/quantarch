{ pkgs, ... }: {
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
            set -g extended-keys always
            set -g extended-keys-format csi-u
            set -as terminal-features 'xterm*:extkeys'
        '';
        plugins = with pkgs.tmuxPlugins; [
            {
                plugin = sensible;
            }
            {
                plugin = resurrect;
                extraConfig = ''
                    set -g @resurrect-strategy-nvim 'session'
                    set -g @resurrect-processes 'lazygit'
                    set -g @resurrect-processes 'yazi'
                '';
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
