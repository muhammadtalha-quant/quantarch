{...}: {
  programs.fastfetch.enable = true;
  programs.fastfetch.settings = {
    logo  = {
      source = "nixos_old";
    };
 };
}