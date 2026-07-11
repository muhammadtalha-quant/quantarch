let
    gruvbox = {
        primary = "#b8bb26";
        on_primary = "#282828";
        secondary = "#fabd2f";
        tertiary = "#83a598";
        error = "#fb4934";
        surface = "#282828";
        on_surface = "#fbf1c7";
        on_surface_variant = "#ebdbb2";
        outline = "#786f6b";
    };
in
{
    programs.fastfetch = {
        enable = true;
        settings = {
            logo = {
                source = "nixos";
                padding = {
                    left = 1;
                    right = 2;
                };
            };
            display = {
                separator = " : ";
            };
            general = {
                detectVersion = false;
            };
            modules = [
                {
                    type = "custom";
                    format = "┌───────────────────────────────────────────────┐";
                }
                {
                    type = "os";
                    key = "   OS";
                    format = "{3}";
                    keyColor = "${gruvbox.error}";
                }
                {
                    type = "kernel";
                    key = "   Kernel";
                    format = "{1} {2}";
                    keyColor = "${gruvbox.error}";
                }
                {
                    type = "packages";
                    key = "  󰏗 Packages";
                    keyColor = "${gruvbox.primary}";
                }
                {
                    type = "display";
                    key = "  󰍹 Display";
                    format = "{1}x{2} @ {3}Hz [{7}]";
                    keyColor = "${gruvbox.primary}";
                }
                {
                    type = "terminal";
                    key = "   Terminal";
                    format = "{3} {6}";
                    keyColor = "${gruvbox.secondary}";
                }
                {
                    type = "shell";
                    key = "   Shell";
                    format = "{6} {4}";
                    keyColor = "${gruvbox.secondary}";
                }
                {
                    type = "wm";
                    key = "  󱗃 WM";
                    format = "{2}";
                    keyColor = "${gruvbox.secondary}";
                }
                {
                    type = "custom";
                    format = "└───────────────────────────────────────────────┘";
                }
                "break"
                {
                    type = "title";
                    key = "  ";
                    format = "{6} {7} {8}";
                    keyColor = "${gruvbox.primary}";
                }
                {
                    type = "custom";
                    format = "┌────────────────────────────────────────────────┐";
                }
                {
                    type = "cpu";
                    format = "{1} @ {7}";
                    key = "   CPU";
                    keyColor = "${gruvbox.tertiary}";
                }
                {
                    type = "gpu";
                    format = "{1} {2}";
                    key = "  󰊴 GPU";
                    keyColor = "${gruvbox.tertiary}";
                }
                {
                    type = "memory";
                    key = "   Memory ";
                    format = "{1} used out of {2}";
                    keyColor = "${gruvbox.secondary}";
                }
                {
                    type = "disk";
                    key = "  󱦟 OS Age ";
                    folders = "/";
                    keyColor = "${gruvbox.error}";
                    format = "{days} days";
                }
                {
                    type = "uptime";
                    key = "  󱫐 Uptime ";
                    keyColor = "${gruvbox.error}";
                }
                {
                    type = "custom";
                    format = "└────────────────────────────────────────────────┘";
                }
                {
                    type = "colors";
                    padding.left = 2;
                    symbol = "circle";
                }
                "break"
            ];
        };
    };
}
