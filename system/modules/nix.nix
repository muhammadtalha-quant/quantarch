{...}: {
  nix.settings.experimental-features = [ "nix-command" "flakes"];
  nix.optimise = {
    automatic = true;
    dates = "09:00:00";
  };
}