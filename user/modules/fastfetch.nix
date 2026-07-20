let
    colors = {
        base00 = "#282828";
        base01 = "#3c3836";
        base02 = "#504945";
        base03 = "#665c50";
        base04 = "#bdae93";
        base05 = "#d5c4a1";
        base06 = "#ebdbb2";
        base07 = "#fbf1c7";
        base08 = "#fb4934";
        base09 = "#fe8019";
        base0A = "#fabd2f";
        base0B = "#b8bb26";
        base0C = "#5f6c1f";
        base0D = "#b8bb26";
        base0E = "#96bda2";
        base0F = "#d65d0e";
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
                    keyColor = "${colors.base09}";
                }
                {
                    type = "kernel";
                    key = "   Kernel";
                    format = "{1} {2}";
                    keyColor = "${colors.base05}";
                }
                {
                    type = "packages";
                    key = "  󰏗 Packages";
                    keyColor = "${colors.base0B}";
                }
                {
                    type = "display";
                    key = "  󰍹 Display";
                    format = "{1}x{2} @ {3}Hz [{7}]";
                    keyColor = "${colors.base0E}";
                }
                {
                    type = "terminal";
                    key = "   Terminal";
                    format = "{3} {6}";
                    keyColor = "${colors.base0A}";
                }
                {
                    type = "shell";
                    key = "   Shell";
                    format = "{6} {4}";
                    keyColor = "${colors.base0A}";
                }
                {
                    type = "wm";
                    key = "  󱗃 WM";
                    format = "{2}";
                    keyColor = "${colors.base0A}";
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
                    keyColor = "${colors.base07}";
                }
                {
                    type = "custom";
                    format = "┌────────────────────────────────────────────────┐";
                }
                {
                    type = "cpu";
                    format = "{1} @ {7}";
                    key = "   CPU";
                    keyColor = "${colors.base08}";
                }
                {
                    type = "gpu";
                    format = "{1} {2}";
                    key = "  󰊴 GPU";
                    keyColor = "${colors.base0F}";
                }
                {
                    type = "memory";
                    key = "   Memory ";
                    format = "{1} {2}";
                    keyColor = "${colors.base0B}";
                }
                {
                    type = "disk";
                    key = "  󱦟 OS Age ";
                    folders = "/";
                    keyColor = "${colors.base09}";
                    format = "{days} days";
                }
                {
                    type = "uptime";
                    key = "  󱫐 Uptime ";
                    keyColor = "${colors.base04}";
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
