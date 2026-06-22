{pkgs, ...}: {
  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
    newcomputermodern
  ];
  environment.systemPackages = with pkgs; [
    neovim
    nixd
    alejandra
    nix-output-monitor
  ];
}
