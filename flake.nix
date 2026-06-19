{
  description = "A flake that manages my NixOS System";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    homeManager.url = "github:nix-community/home-manager/master";
    homeManager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs , homeManager, ... } @inputs : {
  nixosConfigurations.quantnix = nixpkgs.lib.nixosSystem {
          specialArgs = { inherit inputs; };
          modules = [
            ./configuration.nix
            homeManager.nixosModules.home-manager
            {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.users.muhammadtalha = import ./home.nix;
            }
          ];
      };
  };
}
