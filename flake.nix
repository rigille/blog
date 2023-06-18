{
  description = "A flake for developing and building my personal website";

  inputs = {
    flake-parts = { url = "github:hercules-ci/flake-parts"; inputs.nixpkgs-lib.follows = "nixpkgs"; };
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    theme = { url = "github:getzola/even"; flake = false; };
    hercules-ci-effects = { url = "github:kranzes/hercules-ci-effects/cloudflare-pages"; inputs.nixpkgs.follows = "nixpkgs"; };
    nix-filter.url = "github:numtide/nix-filter";
  };

  outputs = inputs:
    inputs.flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [ "x86_64-linux" ];
      imports = [
        ./nix/website.nix
        ./nix/development.nix
        ./nix/deployment.nix
        inputs.hercules-ci-effects.flakeModule
      ];
    };
}
