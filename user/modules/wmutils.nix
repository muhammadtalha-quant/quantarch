{...}: 
{
  programs = {
    imv.enable = true;
    mpv = {
      enable = true;
      config = {
        cache-default = 4000000;
        force-window = true;
        profile = "gpu-hq";
        ytdl-format = "bestvideo+bestaudio";
      };
    };
    satty = {
      general = {
        fullscreen = false;
        "output-filename" = "~/Pictures/Screenshots/Annotated/screenshot_%H%M_%Y%m%d.png";
        "copy-command" = "wl-copy";
        "actions-on-enter" = [ "save-to-clipboard" "save-to-file" ];
        "actions-on-escape" = [ "exit" ];
        "floating-hack" = true;
      };
      keybinds = {
        pointer = "p";
        crop = "c";
        brush = "b";
        line = "i";
        arrow = "z";
        rectangle = "r";
        ellipse = "e";
        text = "t";
        marker = "m";
        blur = "u";
        highlight = "g";
      };
      font = {
        family = "JetBrainsMono NFM";
        style = "Regular";
      };
      "color-palette".palette = [
        "#b8bb26"
        "#282828"
        "#fabd2f"
        "#83a598"
        "#fb4934"
        "#282828"
        "#fbf1c7"
        "#ebdbb2"
        "#786f6b"
      ];
    };
  };
}