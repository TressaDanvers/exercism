with import <nixpkgs> {};
mkShell {
  buildInputs = [ (callPackage ../../.nix-packages/wren.nix {}) ];
  shellHook = ''. ../../.nix-shells/nix-shell.sh'';
}
