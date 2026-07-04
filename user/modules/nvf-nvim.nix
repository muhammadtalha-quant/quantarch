{lib, ...}: 
      /*
programs.nvf.settings.vim
│

├── binds
├── keymaps
│
├── languages
│   ├── enableLSP
│   ├── enableTreesitter
│   ├── enableFormat
│   ├── enableExtraDiagnostics
│   │
│   ├── nix
│   ├── lua
│   ├── bash
│   ├── html
│   ├── css
│   ├── ts
│   ├── js
│   ├── json
│   ├── yaml
│   ├── markdown
│   └── ...
│
├── formatter
├── lsp
└── plugins
*/
{
  programs.nvf = {
    enable = true;
    settings = {
      vim = {
        opts = {
          shiftwidth = 4;
          tabstop = 4;
        };
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
                }
                {
                  icon = " ";
                  desc = "Find file";
                  action = "Telescope find_files";
                }
                {
                  icon = " ";
                  desc = "Recent files";
                  action = "Telescope oldfiles";
                }
                {
                  icon = "󰙅 ";
                  desc = "Explorer";
                  action = "lua vim.cmd(\"Neotree toggle\")";
                }
              ];
              footer = [
                "Ready to codify your thoughts ? Let's Roll !"
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
          noice.enable = true;
          illuminate.enable = true;
          colorizer.enable = true;
        };
        # TODO means when I feel the need so I will enable it
        #TODO: assitant
        languages = {
          enableLSP = true;
          enableExtraDiagnostics = true;
          enableFormat = true;
          enableTreesitter = true;
          enableDAP = true;
          
          nix.enable = true;
          typst.enable = true;
          cmake.enable = true;
          clang.enable = true;
          toml.enable = true;
          yaml.enable = true;
          sql.enable = true;
          json.enable = true;
          markdown.enable = true;
          python.enable = true;
        };
        projects.project-nvim.enable = true;
        notes.todo-comments.enable = true;
        notes.obsidian.enable = true;
        notify.nvim-notify.enable = true;
        clipboard.enable = true;
        clipboard.providers.wl-copy.enable = true;
        clipboard.registers = "unnamedplus";
        mini = {
          ai.enable = true;
          comment.enable = true;
          pairs.enable = true;
  

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