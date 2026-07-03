{pkgs, ...}: {
  programs.yazi = {
    enable = true;
    enableFishIntegration = true;
    plugins = {
      ouch = pkgs.yaziPlugins.ouch;
    };    
    flavors = {
      gruvbox = pkgs.fetchFromGitHub {
        owner = "bennyyip";
        repo = "gruvbox-dark.yazi";
        rev = "619fdc5844db0c04f6115a62cf218e707de2821e";
        sha256 = "sha256-Y/i+eS04T2+Sg/Z7/CGbuQHo5jxewXIgORTQm25uQb4=";
      };
    };
    theme = {
      flavor = {
        dark = "gruvbox";
      };
    };
    settings = {
      mgr = {
        sort_by = "mtime";
        sort_sensitive = false;
        sort_dir_first = true;
        linemode = "permissions";
        show_hidden = false;
        show_symlink = true;
      };
      preview.wrap = "no";
      plugin.prepend_previewers = [
        {
          mime = "application/{*zip,tar,bzip2,7z*,rar,xz,zstd,java-archive}";
          run  = "ouch";
        }
      ];
      opener = {
        extract = [
          {
            run = "ouch d -y \"$@\"";
            desc = "Extract here with ouch";
            for = "unix";
          }
        ];
      };
    };
    keymap = {
      mgr.prepend_keymap = [
        {
          on   = [ "C" ];
          run  = "plugin ouch";
        }
      ];
    };
  }; 
}