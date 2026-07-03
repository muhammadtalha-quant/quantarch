{pkgs, ...}: {
  xdg.portal = {
    enable = true;
    wlr.enable = true;
    extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
  };
  xdg.mime = {
    enable = true;
    defaultApplications = {
      "inode/directory" = [ "yazi.desktop" ];
      "text/*" = [ "nvim.desktop" ];
      "application/pdf" = [ "org.pwmt.zathura.desktop" ];
      "image/*" = [ "imv.desktop" ];
      "video/*" = [ "umpv.desktop" ];
      "audio/*" = [ "umpv.desktop" ];
    };
  };
}