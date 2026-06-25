{...}: 
let 
  gruvbox = {
    primary            = "#b8bb26";
    on_primary         = "#282828";
    secondary          = "#fabd2f";
    tertiary           = "#83a598";
    error              = "#fb4934";
    surface            = "#282828";
    on_surface         = "#fbf1c7";
    on_surface_variant = "#ebdbb2";
    outline            = "#786f6b";
  };
  keys = {
    mod = {
      super = "Mod4";
      alt   = "Mod1";
      shift = "Shift";
      ctrl  = "Control";
    };
    alphabet = {
      a = "a";
      b = "b";
      c = "c";
      d = "d";
      e = "e";
      f = "f";
      g = "g";
      h = "h";
      i = "i";
      j = "j";
      k = "k";
      l = "l";
      m = "m";
      n = "n";
      o = "o";
      p = "p";
      q = "q";
      r = "r";
      s = "s";
      t = "t";
      u = "u";
      v = "v";
      w = "w";
      x = "x";
      y = "y";
      z = "z";
    };
    arrow = {
      left = "Left";
      down = "Down";
      up = "Up";
      right = "Right";
    };
    punctuation = {
      comma = "comma";
      period = "period";
      semicolon = "semicolon";
      apostrophe = "apostrophe";
    };
    symbols = {
      equal = "equal";
      minus = "minus";
      bracketright = "bracketright";
      bracketleft = "bracketleft";
      slash = "slash";
      backslash = "backslash";
      backtick = "grave";
    };
    special = {
      backspace  = "backspace";
      enter = "return";
      space = "space";
      tab = "tab";
      escape = "escape";
      print = "print";
    };
    lock = {
      caps = "Caps_Lock";
      num = "Num_Lock";
      scroll = "Scroll_Lock";
    };
    navigation = {
      home = "Home";
      end = "End";
      pageup = "Page_Up";
      pagedown = "Page_Down";
    };
    function = {
      f1 = "F1";
      f2 = "F2";
      f3 = "F3";
      f4 = "F4";
      f5 = "F5";
      f6 = "F6";
      f7 = "F7";
      f8 = "F8";
      f9 = "F9";
      f10 = "F10";
      f11 = "F11";
      f12 = "F12";
    };
    xf86 = {
      #-- Update according to your keyboard; use wev to find sym
      #-- Based on my current keyboard, ZUNTUO wired keyboard, model unknown
      homepage = "XF86HomePage";                            #   -- Fn + F1   
      mail = "XF86Mail";                                    #   -- Fn + F2     
      search = "XF86Search";                                #   -- Fn + F3 
      tools = "XF86Tools";                                  #   -- Fn + F4   
      audioplay = "XF86AudioPlay";                          #   -- Fn + F5   
      audioprev = "XF86AudioPrev";                          #   -- Fn + F6       
      audionext = "XF86AudioNext";                          #   -- Fn + F7       
      audiolowervolume = "XF86AudioLowerVolume";            #   -- Fn + F8               
      audioraiservolume = "XF86AudioRaiseVolume";            #   -- Fn + F9               
      audiomute = "XF86AudioMute";                          #   -- Fn + F10           
      explorer = "XF86Explorer";                            #   -- Fn + F11           
      calculator = "XF86Calculator";                        #   -- Fn + F12         
        
      # copied from my laptop's faulty keyboard
      brightnessdown = "XF86MonBrightnessDown";             # -- Fn + F9     (ON MY LAPTOP)
      brightnessup = "XF86MonBrightnessUp";                 # -- Fn + F10    (ON MY LAPTOP)
      sleep = "XF86Sleep";  
    };
    mouse = {
      lmb = "mouse:272";
      rmb = "mouse:273";
      mmb = "mouse:274";
    };
  };
  apps = {
    kitty = "kitty";
    chrome = "google-chrome-stable";
    localsend = "localsend_app";
    vscode = "code";
  };
  ipc = {
    launcher = "noctalia msg panel-toggle launcher";
    lock = "noctalia msg session lock";
  };
in
{
  wayland.windowManager.sway = {
    enable = true;
    config = {
      modifier = keys.mod.super;
      terminal = apps.kitty;

      bars = [];
      startup = [
        {
          always = false;
          command = "noctalia";
        }
        {
          always = true;
          command = "autotiling";
        }
      ];

      window = {
        titlebar = false;
        border = 0;
      };
      floating = {
        titlebar = false;
        modifier = keys.mod.super;
        border = 0;
      };

      focus = {
        followMouse = true;
        newWindow = "smart";
      };

      colors = {
        background = gruvbox.surface;
        focused = {
          border = gruvbox.primary;
          background = gruvbox.surface;
          text = gruvbox.on_surface;
          indicator = gruvbox.primary;
          childBorder = gruvbox.primary;        
        };
        focusedInactive = {
          border = gruvbox.outline;
          background = gruvbox.on_surface_variant;
          text = gruvbox.on_surface;
          indicator = gruvbox.outline;
          childBorder = gruvbox.outline;          
        };
        placeholder = {
          background = gruvbox.surface;
          border = gruvbox.surface;
          text = gruvbox.on_surface_variant;
          indicator = gruvbox.surface;
          childBorder = gruvbox.surface;
        };
        unfocused = {
          border = gruvbox.outline;
          background = gruvbox.on_surface_variant;
          text = gruvbox.on_surface;
          indicator = gruvbox.outline;
          childBorder = gruvbox.outline;          
        };
        urgent = {
          border = gruvbox.error;
          text = gruvbox.on_surface;
          background = gruvbox.surface;
          childBorder = gruvbox.error;
          indicator = gruvbox.error;
        };
      };
      gaps = {
        inner = 10;
        outer = 5;
        smartBorders = "on";
      };
      fonts = {
        names = [ "monospace" ];
        size = 0.001;
      };

      keybindings = {
          "${keys.mod.super}+${keys.special.enter}" = "exec ${apps.kitty}";
          "${keys.mod.super}+${keys.alphabet.b}" = "exec ${apps.chrome}";
          "${keys.mod.super}+${keys.alphabet.c}" = "exec ${apps.vscode}";
          "${keys.mod.super}+${keys.mod.shift}+${keys.alphabet.c}" = "reload";
          "${keys.mod.super}+${keys.alphabet.q}" = "kill container";
          "${keys.mod.super}+${keys.special.space}" = "exec ${ipc.launcher}";
          "${keys.mod.super}+${keys.alphabet.l}" = "exec ${ipc.lock}";
          "${keys.mod.super}+1" = "workspace number 1";
          "${keys.mod.super}+2" = "workspace number 2";
          "${keys.mod.super}+3" = "workspace number 3";
          "${keys.mod.super}+4" = "workspace number 4";
          "${keys.mod.super}+5" = "workspace number 5";
          "${keys.mod.super}+6" = "workspace number 6";
          "${keys.mod.super}+7" = "workspace number 7";
          "${keys.mod.super}+8" = "workspace number 8";
          "${keys.mod.super}+9" = "workspace number 9";
          "${keys.mod.super}+0" = "workspace number 0";
          "${keys.mod.super}+${keys.mod.shift}+1" = "move container to workspace number 1";
          "${keys.mod.super}+${keys.mod.shift}+2" = "move container to workspace number 2";
          "${keys.mod.super}+${keys.mod.shift}+3" = "move container to workspace number 3";
          "${keys.mod.super}+${keys.mod.shift}+4" = "move container to workspace number 4";
          "${keys.mod.super}+${keys.mod.shift}+5" = "move container to workspace number 5";
          "${keys.mod.super}+${keys.mod.shift}+6" = "move container to workspace number 6";
          "${keys.mod.super}+${keys.mod.shift}+7" = "move container to workspace number 7";
          "${keys.mod.super}+${keys.mod.shift}+8" = "move container to workspace number 8";
          "${keys.mod.super}+${keys.mod.shift}+9" = "move container to workspace number 9";
          "${keys.mod.super}+${keys.mod.shift}+0" = "move container to workspace number 0";
      };
    };
  };
}