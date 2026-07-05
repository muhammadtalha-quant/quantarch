{...}: 
let
  outputMonitor = "eDP-1";
in
{
  programs.noctalia =  {
    enable = true;
    settings = {
      shell = {
        font_family = "JetBrainsMono NFM";
        clipboard_auto_paste = "off";
        clipboard_confirm_clear_history = false;
        clipboard_image_action_command = "imv";
        date_format = "%B %d, %Y";
        middle_click_opens_widget_settings = false;
        polkit_agent = true;
        time_format = "{:%A}\\n{:%I:%M %p}";
        launcher = {
          categories = false;
          sort_by_usage = false;
        };
        greeter_sync.auto_sync = true;
        panel = {
          borders = false;
          clipboard_position = "auto";
          session_placement = "floating";
          wallpaper_placement = "floating";
        };
        screenshot = {
          directory = "~/Pictures/Screenshots";
          pipe_command = "satty -f -";
          pipe_to_command = true;
        };
        session.actions = [
          {
            action = "lock";
            countdown_seconds = 0.0;
            enabled = true;
            shortcut = "1";
            variant = "default";
          }
          {
            action = "logout";
            countdown_seconds = 0.0;
            enabled = true;
            shortcut = "2";
            variant = "default";
          }
          {
            action = "reboot";
            countdown_seconds = 0.0;
            enabled = true;
            shortcut = "3";
            variant = "default";
          }
          {
            action = "shutdown";
            countdown_seconds = 0.0;
            enabled = true;
            shortcut = "4";
            variant = "destructive";
          }
        ];
      };
      wallpaper = {
        directory = "/home/muhammadtalha/Pictures/Wallpapers";
        fill_mode = "stretch";
        default.path = "/home/muhammadtalha/Pictures/Wallpapers/buildings.png";
        default.last = "/home/muhammadtalha/Pictures/Wallpapers/buildings.png";
        default.monitors."${outputMonitor}".path = "/home/muhammadtalha/Pictures/Wallpapers/buildings.png";
      };
      plugins.enabled = [
        "noctalia/screen_recorder"
      ];
      plugin_settings."noctalia/screen_recorder" = {
        color_range = "full";
        quality = "high";
        video_source = "focused";
      };
      widget.recorder.type = "noctalia/screen_recorder:recorder";
      widget.weather.show_condition = false;
      widget.network.show_label = false;
      widget.active_window = {
        icon_size = 17;
        max_length = 128;
        min_length = 35;
        title_scroll = "always";
      };
      widget.workspaces = {
        focused_color = "secondary";
        occupied_color = "tertiary";
      };
      widget.clock = {
        format = "{:%I:%M %p}";
        tooltip_format = "{:%B %A %d, %Y}";
      };
      theme = {
        source = "wallpaper";
        wallpaper_scheme = "faithful";
        templates = {
          builtin_ids = [ ];
          enable_community_templates = false;
        };
      };
      control_center = {
        sidebar = "full";
        sidebar_section = "full";
        shortcuts = [
          {
            type = "wifi";  
          }
          {
            type = "bluetooth";
          }
          {
            type = "power_profile";
          }
          {
            type = "clipboard";
          }
          {
            type = "caffeine";            
                    }
        ];
      };
      bar = {
        order = [ "main" ];
        main = {
          background_opacity = 0.0;
          start = [ "group:g2" "group:g1" ];
          center = [ "group:g8" "group:g3" "group:g4" ];
          end = [ "group:g9" "group:g6" "group:g5" "group:g7" ];
          font_weight = 700;
          margin_edge = 7;
          margin_ends = 1;
          radius = 0;
          scale = 1.1499999999999999;
          thickness = 40;
          widget_spacing = 5;
          capsule_group = [
            {
              border = "outline";
              fill = "outline";
              foreground = "on_surface";
              id = "g1";
              members = [ "active_window" ];
              opacity = 1.0;
              padding = 6.0;
              radius = 5.0;
            }
            {
              border = "outline";
              fill = "outline";
              foreground = "on_surface";
              id = "g2";
              members = [ "workspaces" ];
              opacity = 1.0;
              padding = 6.0;
              radius = 5.0;
            }
            {
              border = "outline";
              fill = "outline";
              foreground = "on_surface";
              id = "g3";
              members = [ "notifications" ];
              opacity = 1.0;
              padding = 6.0;
              radius = 5.0;
            }
            {
              border = "outline";
              fill = "outline";
              foreground = "on_surface";
              id = "g4";
              members = [ "clock" ];
              opacity = 1.0;
              padding = 6.0;
              radius = 5.0;
            }
            {
              border = "outline";
              fill = "outline";
              foreground = "on_surface";
              id = "g5";
              members = [ "network" "bluetooth" ];
              opacity = 1.0;
              padding = 6.0;
              radius = 5.0;
            }
            {
              border = "outline";
              fill = "outline";
              foreground = "on_surface";
              id = "g6";
              members = [ "brightness" "output_volume" ];
              opacity = 1.0;
              padding = 6.0;
              radius = 5.0;
            }
            {
              border = "outline";
              fill = "outline";
              foreground = "on_surface";
              id = "g7";
              members = [ "battery" ];
              opacity = 1.0;
              padding = 6.0;
              radius = 5.0;
            }
            {
              border = "outline";
              fill = "outline";
              foreground = "on_surface";
              id = "g8";
              members = [ "weather" ];
              opacity = 1.0;
              padding = 6.0;
              radius = 5.0;
            }
            {
              border = "outline";
              fill = "outline";
              foreground = "on_surface";
              id = "g9";
              members = [ "screenshot" "recorder" ];
              opacity = 1.0;
              padding = 6.0;
              radius = 5.0;
            }
          ];
        };
      };
      idle = {
        behavior_order = [ "lock" "screen-off" "lock-and-suspend" ];
        pre_action_fade_seconds = 0;
        behavior = {
          lock = {
            action = "lock";
            enabled = true;
            timeout = 600.0;
          };
          screen-off = {
            action = "screen_off";
            enabled = true;
            timeout = 660.0;
          };
          lock-and-suspend = {
            action = "lock_and_suspend";
            enabled = true;
            timeout = 900.0;
          };
        };
      };
      location.address = "Mardan, Pakistan";
      weather.refresh_minutes = 5;
      desktop_widgets.enabled = false;
      lockscreen.blurred_desktop = true;
      lockscreen_widgets = {
        enabled = true;
        schema_version = 2;
        widget_order = [
          "loginbox"
          "audiovis"
          "time"
          "date"
        ];
        grid = {
          cell_size = 16;
          major_interval = 4;
          visible = true;
        };
        widget.loginbox = {
          box_height = 64.0;
          box_width = 350.154296875;
          cx = 680.1728515625;
          cy = 499.794921875;
          output = outputMonitor;
          rotation = 0.0;
          type = "login_box";
          settings = {
            background_color = "surface_variant";
            background_opacity = 0.0;
            background_radius = 0.0;
            input_opacity = 0.0;
            input_radius = 0.0;
            show_login_button = false;
          };
        };
        widget.audiovis = {
          box_height = 38.96484375;
          box_width = 308.51953125;
          cx = 676.525390625;
          cy = 500.736328125;
          output = outputMonitor;
          rotation = 0.0;
          type = "audio_visualizer";
          settings = {
            background = false;
            bands = 100;
            centered = false;
            color_1 = "primary";
            color_2 = "secondary";
            show_when_idle = false;
          };
        };
        widget.time = {
          box_height = 144.125;
          box_width = 318.408203125;
          cx = 683.0;
          cy = 192.0;
          output = outputMonitor;
          rotation = 0.0;
          type = "clock";
          settings = {
            background = false;
            color = "secondary";
            format = "{:%H:%M}";
          };
        };
        widget.date = {
          box_height = 34.22265625;
          box_width = 315.708984375;
          cx = 683.0;
          cy = 260.384765625;
          output = outputMonitor;
          rotation = 0.0;
          type = "clock";
          settings = {
            background = false;
            color = "secondary";
            format = "{:%A, %B %d}";
          };
        };
      };
    };  
  };
}
