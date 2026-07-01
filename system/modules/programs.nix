{pkgs, inputs,  ...}: {
  programs.fish.enable = true;
  programs.sway = {
	  enable = true;
	  xwayland.enable = true;
	  package = pkgs.swayfx;
    extraPackages = [];
  };
  programs.gnupg.agent = {
    enable = true;
    pinentryPackage = pkgs.pinentry-curses;
    enableSSHSupport = true;
  };
  programs.noctalia-greeter = {
    enable = true;
    package = inputs.noctalia-greeter.packages.${pkgs.stdenv.hostPlatform.system}.default;
  
    # Optional configuration
    greeter-args = "";
    settings = {
      cursor = {
        theme = "capitaine-cursors-gruvbox";
        size = 28;
      };
      keyboard = {
        layout = "us";
      };
    };
  };
  programs.gpu-screen-recorder.enable = true;
  programs.dconf.enable = true;
}
