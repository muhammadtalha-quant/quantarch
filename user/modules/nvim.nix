{ lib, ... }: {
    programs.nvf = {
        enable = true;
        settings = {
            vim = {
                opts = {
                    shiftwidth = 4;
                    tabstop = 4;
                    undofile = true;
                    scrolloff = 8;
                    expandtab = true;
                    relativenumber = true;
                    number = true;
                };
                utility = {
                    smart-splits.enable = true;
                    multicursors.enable = true;
                    yazi-nvim.enable = true;
                };
                dashboard.dashboard-nvim = {
                    enable = true;
                    setupOpts = {
                        theme = "doom";
                        config = {
                            header = [
                                ""
                                "░███    ░██                                  ░██           "
                                "░████   ░██                                                "
                                "░██░██  ░██  ░███████   ░███████  ░████████  ░██░██    ░██ "
                                "░██ ░██ ░██ ░██    ░██ ░██    ░██ ░██    ░██ ░██ ░██  ░██  "
                                "░██  ░██░██ ░█████████ ░██    ░██ ░██    ░██ ░██  ░█████   "
                                "░██   ░████ ░██        ░██    ░██ ░██    ░██ ░██ ░██  ░██  "
                                "░██    ░███  ░███████   ░███████  ░██    ░██ ░██░██    ░██ "
                                ""
                                ""
                            ];
                            center = [
                                {
                                    icon = " ";
                                    desc = "New file";
                                    action = "ene | startinsert";
                                    key = "n";
                                }
                                {
                                    icon = " ";
                                    desc = "Find files";
                                    action = "FzfLua files";
                                    key = "f";
                                }
                                {
                                    icon = " ";
                                    desc = "Find text (Grep)";
                                    action = "FzfLua live_grep";
                                    key = "g";
                                }
                                {
                                    icon = " ";
                                    desc = "Recent files";
                                    action = "FzfLua oldfiles";
                                    key = "F";
                                }
                                {
                                    icon = " ";
                                    desc = "Config";
                                    action = "edit /home/muhammadtalha/dotnix/user/modules/nvim.nix";
                                    key = "c";
                                }
                            ];
                            footer = [
                                "================================================="
                                "==> 💡 Got an idea ? Let's bring it to life   <=="
                                "================================================="
                            ];
                        };
                    };
                };
                diagnostics = {
                    enable = true;
                    config = {
                        signs.text = lib.generators.mkLuaInline ''
                            {
                                [vim.diagnostic.severity.ERROR] = "󰅚 ",
                                [vim.diagnostic.severity.WARN] = "󰀪 ",
                            }
                        '';
                        underline = true;
                    };
                };
                git.enable = true;
                theme = {
                    enable = true;
                    name = "gruvbox";
                    style = "dark";
                };
                terminal.toggleterm = {
                    enable = true;
                    lazygit.enable = true;
                };
                binds.whichKey = {
                    enable = true;
                };
                ui = {
                    borders.enable = true;
                    modes-nvim.enable = true;
                    illuminate.enable = true;
                    colorizer.enable = true;
                    fastaction.enable = true;
                };
                lsp = {
                    enable = true;
                    formatOnSave = true;
                };
                debugger.nvim-dap.enable = true;
                languages = {
                    enableExtraDiagnostics = true;
                    enableTreesitter = true;
                    enableFormat = true;
                    enableDAP = true;

                    nix = {
                        enable = true;
                        format.type = [ "nixfmt" ];
                        lsp.servers = [ "nil" ];
                    };
                    #typst.enable = true;
                    #cmake.enable = true;
                    #clang.enable = true;
                    #toml.enable = true;
                    #yaml.enable = true;
                    #sql.enable = true;
                    #json.enable = true;
                    markdown.enable = true;
                    #python.enable = true;
                };
                projects.project-nvim.enable = true;
                notes.todo-comments.enable = true;
                notify.nvim-notify.enable = true;
                clipboard = {
                    enable = true;
                    providers.wl-copy.enable = true;
                    registers = "unnamedplus";
                };
                mini = {
                    ai.enable = true;
                    comment.enable = true;
                    pairs.enable = true;
                    hipatterns.enable = true;
                    icons.enable = true;
                    tabline.enable = true;
                    bracketed.enable = true;
                    jump.enable = true;
                };
                statusline.lualine.enable = true;
                fzf-lua.enable = true;
                autocomplete.blink-cmp.enable = true;
            };
        };
    };
}
