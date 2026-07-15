{ pkgs, ... }: {
    programs.tmux = {
        enable = true;
        aggressiveResize = true;
        keyMode = "vi";
        prefix = "C-b";
        mouse = true;
        disableConfirmationPrompt = true;
        clock24 = true;
        #plugins = with pkgs.tmuxPlugins; [
        #    {
        #        plugin = resurrect;
        #    }
        #];
    };
}
