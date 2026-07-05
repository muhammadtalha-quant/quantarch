{pkgs, ...}: {
  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
    newcomputermodern
  ];
  environment.systemPackages = with pkgs; [
    neovim-unwrapped
    nix-output-monitor
    capitaine-cursors-themed
    zip
    unzip
    _7zz
    file
    gcc
  ];
}
