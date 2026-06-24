{...}: 
{
  programs.noctalia =  {
    enable = true;
    settings = {
      shell = {
        clipboard_history_max_entries = 20.0;
        corner_radius_scale = 1.3500000201165676;
        font_family = "JetBrainsMono Nerd Font Mono";
        polkit_agent = true;
        telemetry_enabled = true;
        animation.speed = 0.6500000096857548;
        panel = {
          clipboard_placement = "attached";
          launcher_categories = false;
          launcher_placement = "attached";
          session_placement = "centered";
          transparency_mode = "glass";
        };
        session = {
          actions = [
            {
              action = "logout";
              enabled = true;
              shortcut = "1";
              variant = "default";
            }
            {
              action = "suspend";
              enabled = true;
              shortcut = "2";
              variant = "default";
            }
            {
              action = "reboot";
              enabled = true;
              shortcut = "3";
              variant = "default";
            }
            {
              action = "shutdown";
              enabled = true;
              shortcut = "4";
              variant = "destructive";
            }
          ];
        };
      };
      control_center = {
        sidebar = "full";
      };
      keybinds = {
        cancel = [ "Escape" ];
        validate = [ "Return" ];
      };
      bar = {
        order = [ "main" ];
        main = {
          enabled = true;
          background_opacity = 0.5;
          capsule = true;
          start = [
            "workspaces"
            "active_window"
          ];
          center = [
            "notifications"
            "clock"
          ];
          end = [
            "network"
            "bluetooth"
            "volume"
            "brightness"
            "battery"
          ];
          font_weight = 700;
          margin_edge = 8.0;
          margin_ends = 19.0;
          padding = 15;
          thickness = 39;
          widget_spacing = 7  ;
        };
      };
      widgets = {
        active_window = {
          title_scroll = "on_hover";
        };

        audio_visualizer = {
          capsule = true;
          show_when_idle = false;
        };

        clock = {
          format = "{:%-I:%M %p}";
        };

        "control-center" = {
          capsule = true;
          capsule_opacity = 1;
          capsule_radius = 9.0;
        };

        date = {
          format = "{:%b %d, %Y}";
        };

        gap = {
          length = 22.0;
          type = "spacer";
        };

        media = {
          capsule = true;
        };
      };
      desktop_widgets = {
        enabled = false;
        schema_version = 1;
        widget_order = [];
        grid = {
          cell_size = 16;
          major_interval = 4;
          visible = true;
        };
      };
      theme = {
        builtin = "Gruvbox";
        mode = "dark";
        source = "builtin";
        templates = {
          builtin_ids = [
            "gtk3"
            "gtk4"
            "hyprland"
            "kcolorscheme"
            "qt"
          ];
          enable_community_templates = false;
        };
      };
      wallpaper = {
        directory = "/home/muhammadtalha/Pictures";
        fill_mode = "stretch";
      };
      weather = {
        address = "Mardan, Pakistan";
      };
    };  
  };
}