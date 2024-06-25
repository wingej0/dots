{
    description = "Wingej0 OS - My Nix OS Configuration";

    inputs = {
        nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    };

    outputs = { self, nixpkgs, ... }: 
        let 
            lib = nixpkgs.lib;
            system = "x86_64-linux";
        in {
        nixosConfigurations = {
            darter-pro = lib.nixosSystem {
                inherit system;
                modules = [ ./configuration.nix ]
            };
        };
    };
}