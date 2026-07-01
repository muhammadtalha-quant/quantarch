{...}: {
  programs.starship = {
    enable = true;
    presets = [ "gruvbox-rainbow" ];
    # override the preset's default icon for NixOS
    settings = {
      os.symbols.NixOS = " ";
    };
  };
}