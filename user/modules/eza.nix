let
    colors = {
        base02 = "#504945";
        base03 = "#665c54";
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
        base0E = "#5f6c1f";
        base0F = "#d65d0e";
    };
in
{
    programs.eza = {
        enable = true;
        theme = {
            colorful = true;
            filekinds = {
                normal = {
                    foreground = "${colors.base05}";
                };
                directory = {
                    foreground = "${colors.base0D}";
                };
                symlink = {
                    foreground = "${colors.base0C}";
                };
                pipe = {
                    foreground = "${colors.base03}";
                };
                block_device = {
                    foreground = "${colors.base0F}";
                };
                char_device = {
                    foreground = "${colors.base0F}";
                };
                socket = {
                    foreground = "${colors.base02}";
                };
                special = {
                    foreground = "${colors.base0E}";
                };
                executable = {
                    foreground = "${colors.base0B}";
                };
                mount_point = {
                    foreground = "${colors.base09}";
                };
            };
            perms = {
                user_read = {
                    foreground = "${colors.base05}";
                };
                user_write = {
                    foreground = "${colors.base0A}";
                };
                user_execute_file = {
                    foreground = "${colors.base0B}";
                };
                user_execute_other = {
                    foreground = "${colors.base0B}";
                };
                group_read = {
                    foreground = "${colors.base05}";
                };
                group_write = {
                    foreground = "${colors.base0A}";
                };
                group_execute = {
                    foreground = "${colors.base0B}";
                };
                other_read = {
                    foreground = "${colors.base04}";
                };
                other_write = {
                    foreground = "${colors.base0A}";
                };
                other_execute = {
                    foreground = "${colors.base0B}";
                };
                special_user_file = {
                    foreground = "${colors.base0E}";
                };
                special_other = {
                    foreground = "${colors.base03}";
                };
                attribute = {
                    foreground = "${colors.base04}";
                };
            };
            size = {
                major = {
                    foreground = "${colors.base04}";
                };
                minor = {
                    foreground = "${colors.base0C}";
                };
                number_byte = {
                    foreground = "${colors.base05}";
                };
                number_kilo = {
                    foreground = "${colors.base05}";
                };
                number_mega = {
                    foreground = "${colors.base0D}";
                };
                number_giga = {
                    foreground = "${colors.base0E}";
                };
                number_huge = {
                    foreground = "${colors.base09}";
                };
                unit_byte = {
                    foreground = "${colors.base04}";
                };
                unit_kilo = {
                    foreground = "${colors.base0D}";
                };
                unit_mega = {
                    foreground = "${colors.base0E}";
                };
                unit_giga = {
                    foreground = "${colors.base0E}";
                };
                unit_huge = {
                    foreground = "${colors.base09}";
                };
            };
            users = {
                user_you = {
                    foreground = "${colors.base06}";
                };
                user_root = {
                    foreground = "${colors.base08}";
                };
                user_other = {
                    foreground = "${colors.base0E}";
                };
                group_yours = {
                    foreground = "${colors.base05}";
                };
                group_other = {
                    foreground = "${colors.base03}";
                };
                group_root = {
                    foreground = "${colors.base08}";
                };
            };
            links = {
                normal = {
                    foreground = "${colors.base0C}";
                };
                multi_link_file = {
                    foreground = "${colors.base09}";
                };
            };
            git = {
                new = {
                    foreground = "${colors.base08}";
                };
                modified = {
                    foreground = "${colors.base0A}";
                };
                deleted = {
                    foreground = "${colors.base08}";
                };
                renamed = {
                    foreground = "${colors.base0C}";
                };
                typechange = {
                    foreground = "${colors.base0E}";
                };
                ignored = {
                    foreground = "${colors.base03}";
                };
                conflicted = {
                    foreground = "${colors.base09}";
                };
            };
            git_repo = {
                branch_main = {
                    foreground = "${colors.base06}";
                };
                branch_other = {
                    foreground = "${colors.base0E}";
                };
                git_clean = {
                    foreground = "${colors.base0B}";
                };
                git_dirty = {
                    foreground = "${colors.base08}";
                };
            };
            security_context = {
                colon = {
                    foreground = "${colors.base03}";
                };
                user = {
                    foreground = "${colors.base05}";
                };
                role = {
                    foreground = "${colors.base0E}";
                };
                typ = {
                    foreground = "${colors.base02}";
                };
                range = {
                    foreground = "${colors.base0E}";
                };
            };
            file_type = {
                image = {
                    foreground = "${colors.base0A}";
                };
                video = {
                    foreground = "${colors.base08}";
                };
                music = {
                    foreground = "${colors.base0B}";
                };
                lossless = {
                    foreground = "${colors.base0C}";
                };
                crypto = {
                    foreground = "${colors.base0F}";
                };
                document = {
                    foreground = "${colors.base05}";
                };
                compressed = {
                    foreground = "${colors.base0E}";
                };
                temp = {
                    foreground = "${colors.base08}";
                };
                compiled = {
                    foreground = "${colors.base0D}";
                };
                build = {
                    foreground = "${colors.base03}";
                };
                source = {
                    foreground = "${colors.base0D}";
                };
            };
            punctuation = {
                foreground = "${colors.base03}";
            };
            date = {
                foreground = "${colors.base0A}";
            };
            inode = {
                foreground = "${colors.base04}";
            };
            blocks = {
                foreground = "${colors.base04}";
            };
            header = {
                foreground = "${colors.base07}";
            };
            octal = {
                foreground = "${colors.base0C}";
            };
            flags = {
                foreground = "${colors.base0E}";
            };
            symlink_path = {
                foreground = "${colors.base0C}";
            };
            control_char = {
                foreground = "${colors.base0D}";
            };
            broken_symlink = {
                foreground = "${colors.base08}";
            };
            broken_path_overlay = {
                foreground = "${colors.base03}";
            };
        };
        enableFishIntegration = true;
    };
}
