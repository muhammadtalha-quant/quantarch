{
    stylix.targets.starship.enable = false;
    programs.starship = {

        enable = true;
        enableFishIntegration = true;
        settings = {
            format = ''
                [](base09)\
                $os\
                $username\
                [](bg:base0A fg:base09)\
                $directory\
                [](fg:base0A bg:base0C)\
                $git_branch\
                $git_status\
                [](fg:base0C bg:base0D)\
                $typst\
                $cmake\
                $c\
                $cpp\
                $python\
                [](fg:base0D bg:base03)\
                $docker_context\
                $conda\
                [](fg:base03 bg:base01)\
                $time\
                [ ](fg:base01)\
                $line_break$character
            '';
            line_break.disabled = false;
            os = {
                disabled = false;
                style = "bg:base09 fg:base07";
                symbols.NixOS = " ";
            };
            username = {
                disabled = false;
                show_always = true;
                style_user = "bg:base09 fg:base07";
                style_root = "bg:base09 fg:base07";
                format = "[ $user ]($style)";
            };
            directory = {
                style = "fg:base07 bg:base0A";
                format = "[ $path ]($style)";
                truncation_length = 3;
                truncation_symbol = "…/";
                substitutions = {
                    "Documents" = "󰈙 ";
                    "Downloads" = " ";
                    "Music" = "󰝚 ";
                    "Pictures" = " ";
                    "Development" = "󰲋 ";
                    "development" = "󰲋 ";
                };
                git_branch = {
                    symbol = " ";
                    style = "bg:base0C";
                    format = "[[ $symbol $branch ](fg:base07 bg:base0C)]($style)";
                };
                git_status = {
                    style = "bg:base0C";
                    format = "[[($all_status$ahead_behind )](fg:base07 bg:base0C)]($style)";
                };
                c = {
                    symbol = " ";
                    style = "bg:base0D";
                    format = "[[ $symbol( $version) ](fg:base07 bg:base0D)]($style)";
                };
                cmake = {
                    symbol = " ";
                    style = "bg:base0D";
                    format = "[[ $symbol( $version) ](fg:base07 bg:base0D)]($style)";
                };
                cpp = {
                    symbol = " ";
                    style = "bg:base0D";
                    format = "[[ $symbol( $version) ](fg:base07 bg:base0D)]($style)";
                };
                python = {
                    symbol = "󰌠 ";
                    style = "bg:base0D";
                    format = "[[ $symbol( $version) ](fg:base07 bg:base0D)]($style)";
                };
                typst = {
                    symbol = " ";
                    style = "bg:base0D";
                    format = "[[ $symbol( $version) ](fg:base07 bg:base0D)]($style)";
                };
                time = {
                    disabled = false;
                    time_format = "%R";
                    style = "bg:base01";
                    format = "[[  $time ](fg:base07 bg:base01)]($style)";
                };
                character = {
                    disabled = false;
                    success_symbol = "[](bold fg:base0B)";
                    error_symbol = "[](bold fg:base08)";
                };
            };
            palatte = "gruvbox_forest";
            palettes.gruvbox_forest = {
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
        };
    };
}
