with import <nixpkgs> {};
mkShell {
  buildInputs = [ sbcl ];
  shellHook = ''. ../../.nix-shells/hook.sh'';
}
