with import <nixpkgs> {};
mkShell {
  buildInputs = [ erlang gleam rebar3 ];
  shellHook = ''. ../../.nix-shells/hook.sh'';
}
