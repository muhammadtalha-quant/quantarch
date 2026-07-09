{lib, ...}: {
    programs.nvf = {
        enable = true;
        settings = {
            vim = {
                opts = {
                    shiftwidth = 4;
                    tabstop = 4;
                    undofile = true;
                    scrolloff = 8;
                    relativenumber = true;
                    number = true;
                };
               utility.multicursors.enable = true;
                dashboard.dashboard-nvim = {
                    enable = true;
                    setupOpts = {
                        theme = "doom";
                        config = {
                            header = [
                                ""
                                ""
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
                                    action = "Telescope find_files";
                                    key = "f"; 
                                }
                                { 
                                    icon = " "; 
                                    desc = "Find text (Grep)";
                                    action = "Telescope live_grep";
                                    key = "g"; 
                                }
                                { 
                                    icon = " "; 
                                    desc = "Recent files";
                                    action = "Telescope oldfiles";
                                    key = "o"; 
                                }
                                { 
                                    icon = "󰙅 "; 
                                    desc = "File Explorer";
                                    action = "Neotree toggle";
                                    key = "e"; 
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
                terminal.toggleterm = {
                    enable = true;
                    lazygit.enable = true;
                };
                theme = {
                    enable = true;
                    name = "gruvbox";
                    style = "dark";
                };
                filetree.neo-tree.enable = true;
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
                lsp.enable = true;
                debugger.nvim-dap.enable = true;
                lsp.lightbulb.enable = true;
                languages = {
                    enableExtraDiagnostics = true;
                    enableFormat = true;
                    enableTreesitter = true;
                    enableDAP = true;
                    
                    nix.enable = true;
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
                clipboard.enable = true;
                clipboard.providers.wl-copy.enable = true;
                clipboard.registers = "unnamedplus";
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
                telescope.enable = true;
                autocomplete.nvim-cmp.enable = true;
            };
        };
    };
}
