with import <nixpkgs> {};
mkShell {
  buildInputs = [ kotlin jetbrains.jdk ];
  shellHook = ''. ../../.nix-shells/hook.sh'';
}
