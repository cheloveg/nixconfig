{

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.05";
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager/release-24.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
        
    stylix.url = "github:danth/stylix";
  };

  outputs = { self, nixpkgs, nixpkgs-unstable, home-manager, ...} @ inputs:
  let
	system = "x86_64-linux";
  	
    pkgs = import nixpkgs {
      inherit system;
      config.allowUnfree = true;
    };

    pkgs-unstable = import nixpkgs-unstable {
      inherit system;
      config.allowUnfree = true;
    };
  in {
    nixosConfigurations = {
      zen = nixpkgs.lib.nixosSystem {
        inherit system;
        specialArgs = {inherit inputs pkgs pkgs-unstable;};

        modules = [ ./configuration.nix ];
      };
    };
    
    homeConfigurations = {
    	cheloveg = home-manager.lib.homeManagerConfiguration {
    		pkgs = nixpkgs.legacyPackages.${system};
    		modules = [ ./home.nix ];
    	};
    };
  };
}
