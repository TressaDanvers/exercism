with import <nixpkgs> {};
mkShell {
  buildInputs = [ zig ];
  shellHook = ''. ../../.nix-shells/hook.sh'';
}
