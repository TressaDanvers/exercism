with import <nixpkgs> {};
mkShell {
  buildInputs = [ tcl ];
  shellHook = ''
    . ../../.nix-shells/hook.sh
    command -v rlwrap && alias tclsh='rlwrap tclsh'
  '';
}
