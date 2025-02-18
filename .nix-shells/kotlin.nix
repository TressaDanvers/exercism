with import <nixpkgs> {};
mkShell {
  buildInputs = [ kotlin jetbrains.jdk ];
  shellHook = ''. ../../.nix-shells/nix-shell.sh'';
}
