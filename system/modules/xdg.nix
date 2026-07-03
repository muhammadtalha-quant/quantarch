{pkgs, ...}: {
  xdg.portal = {
    enable = true;
    wlr.enable = true;
    extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
  };
  xdg.mime = {
    enable = true;
    defaultApplications = {
      "inode/directory" = [ "org.gnome.Nautilus.desktop" ];
      "text/plain" = [ "org.gnome.TextEditor.desktop" ];
      "application/pdf" = [ "org.gnome.Papers.desktop" ];
      "image/*" = [ "imv.desktop" ];
      "video/*" = [ "umpv.desktop" ];
      "audio/*" = [ "umpv.desktop" ];
    };
  };
}