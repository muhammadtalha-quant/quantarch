{pkgs, ...}: {
  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
    newcomputermodern
  ];
  environment.systemPackages = with pkgs; [
	  git
	  lazygit
	  gh
    neovim
    nixd
    alejandra
    nix-output-monitor
  ];
}
