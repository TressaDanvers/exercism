with import <nixpkgs> {};
mkShell {
  buildInputs = with haskellPackages; [ cabal-install stack ];
  shellHook = ''. ../../.nix-shells/nix-shell.sh'';
}
