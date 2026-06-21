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
	  kitty
    nixd
    alejandra
  ];
}