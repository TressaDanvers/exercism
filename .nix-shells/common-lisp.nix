with import <nixpkgs> {};
mkShell {
  buildInputs = [ roswell ];
  shellHook = ''. ../../.nix-shells/hook.sh'';
}
