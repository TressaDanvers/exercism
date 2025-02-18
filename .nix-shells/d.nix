with import <nixpkgs> {};
let
  dub2nix-src = fetchTarball { url = "https://github.com/lionello/dub2nix/archive/master.tar.gz"; };
  dub2nix = (import dub2nix-src) { inherit pkgs; };
in
mkShell {
  buildInputs = [ dub dub2nix dmd ];
  shellHook = ''. ../../.nix-shells/hook.sh'';
}
