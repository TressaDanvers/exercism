with import <nixpkgs> {};
mkShell {
  buildInputs = [ tcl ];
  shellHook = ''
    . ../../.nix-shells/nix-shell.sh
    command -v rlwrap && alias tclsh='rlwrap tclsh'
  '';
}
