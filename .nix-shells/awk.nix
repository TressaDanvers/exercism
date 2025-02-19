with import <nixpkgs> {};
mkShell {
  buildInputs = [ bats gawk ];
  shellHook = ''. ../../.nix-shells/hook.sh'';
}
