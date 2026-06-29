{
  description = "A monolithic single host flake that manages my complete NixOS System";

  
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    homeManager = {
      url = "github:nix-community/home-manager/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    disko = {
      url = "github:nix-community/disko/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    noctalia = {
    	url = "github:noctalia-dev/noctalia";
	inputs.nixpkgs.follows = "nixpkgs";
    };
    noctalia-greeter = {
	url = "github:noctalia-dev/noctalia-greeter";
	inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs , homeManager, disko, ... } @inputs : {
    nixosConfigurations.quantnix = nixpkgs.lib.nixosSystem {
      specialArgs = { inherit inputs; };
      modules = [
        ./system/configuration.nix
        homeManager.nixosModules.home-manager
        {
          home-manager = {
            useGlobalPkgs = true;
            useUserPackages = true;
            users.muhammadtalha = import ./user/home.nix;
            backupFileExtension = "bak";
            extraSpecialArgs = { inherit inputs; };
          };
        }
        disko.nixosModules.disko
        ./system/disko.nix
      ];
    };
  };
}
