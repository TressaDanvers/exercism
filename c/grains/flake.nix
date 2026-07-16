{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    unity.url = "github:ThrowTheSwitch/Unity/v2.6.1";
    unity.flake = false;
  };

  outputs = inputs@{ nixpkgs, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (system: let
      pkgs = nixpkgs.legacyPackages.${system};
      src = ./.;
    in import ../build-tests.nix (inputs // { inherit pkgs system src; }));
}
