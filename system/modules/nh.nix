{...}: {
  programs.nh = {
    enable = true;
    flake = "/home/muhammadtalha/dotfiles";

    clean = {
      enable = true;
      dates = "Mon *-*-* 09:00:00";
      extraArgs = "--keep 5 --keep-since 2d";
    };
  };
}