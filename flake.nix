{
    nixConfig = {
        extra-substituters = [ "https://noctalia.cachix.org" ];
        extra-trusted-public-keys = [
            "noctalia.cachix.org-1:pCOR47nnMEo5thcxNDtzWpOxNFQsBRglJzxWPp3dkU4="
        ];
    };
    description = "A monolithic single host flake that manages my complete NixOS System";

    inputs = {
        nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
        homeManager = {
            url = "github:nix-community/home-manager/master";
            inputs.nixpkgs.follows = "nixpkgs";
        };
        import-tree.url = "github:denful/import-tree";
        stylix = {
            url = "github:nix-community/stylix";
            inputs.nixpkgs.follows = "nixpkgs";
        };
        disko = {
            url = "github:nix-community/disko/master";
            inputs.nixpkgs.follows = "nixpkgs";
        };
        noctalia.url = "github:noctalia-dev/noctalia/cachix";
        niri-flake = {
            url = "github:sodiboo/niri-flake";
            inputs.nixpkgs.follows = "nixpkgs";
        };
        nvf = {
            url = "github:notashelf/nvf";
            inputs.nixpkgs.follows = "nixpkgs";
        };
    };

    outputs =
        {
            self,
            nixpkgs,
            homeManager,
            disko,
            stylix,
            ...
        }@inputs:
        {
            nixosConfigurations.quantnix = nixpkgs.lib.nixosSystem {
                specialArgs = { inherit inputs; };
                modules = [
                    stylix.nixosModules.stylix
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
