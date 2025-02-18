with import <nixpkgs> {};
mkShell {
  shellHook = ''. ../../.nix-shells/hook.sh'';
}
