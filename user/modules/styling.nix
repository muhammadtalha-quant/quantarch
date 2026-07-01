{pkgs, ...}: {
  gtk = {
    enable = true;
    theme = {
      name = "Gruvbox-Green";
      package = pkgs.gruvbox-gtk-theme;
    };
    iconTheme = {
      name = "Gruvbox-Plus-Dark";
      package = pkgs.gruvbox-plus-icons;
    };
    cursorTheme = {
      name = "capitaine-cursors";
      package = pkgs.capitaine-cursors-themed;
      size = 24;
    };
    font = {
      package = null;
      name = "JetBrainsMono Nerd Font Mono";
      size = 11;
    };
    colorScheme = "dark";
  };
  qt = {
    enable = true;
    platformTheme.name = "gtk";
  };
  home.pointerCursor = {
    gtk.enable = true;
    x11.enable = true;
    name = "capitaine-cursors";
    package = pkgs.capitaine-cursors-themed;
    size = 24;
  };
   home.sessionVariables = {
    QT_QPA_PLATFORM = "wayland;xcb";
    QT_WAYLAND_DISABLE_WINDOWDECORATION = "1";
  };
}