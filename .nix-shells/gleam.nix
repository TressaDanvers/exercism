with import <nixpkgs> {};
mkShell {
  buildInputs = [ erlang gleam rebar3 ];
  shellHook = ''. ../../.nix-shells/nix-shell.sh'';
}
