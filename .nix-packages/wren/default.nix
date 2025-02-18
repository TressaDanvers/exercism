let
  nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-unstable";
in with import nixpkgs {}; {
  wren = pkgs.callPackage ./wren.nix {};
}
