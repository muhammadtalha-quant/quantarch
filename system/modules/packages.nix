{pkgs, ...}: {
  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
    newcomputermodern
  ];
  environment.systemPackages = with pkgs; [
    neovim-unwrapped
    nixd
    alejandra
    nix-output-monitor
    capitaine-cursors-themed
    zip
    unzip
    _7zz
    file
    gcc
  ];
}
