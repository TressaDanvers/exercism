with import <nixpkgs> {};
let
  dub2nix-src = fetchTarball { url = "https://github.com/lionello/dub2nix/archive/master.tar.gz"; };
  dub2nix = (import dub2nix-src) { inherit pkgs; };
in
mkShell {
  buildInputs = [ dub dub2nix dmd ];

  shellHook = ''
    . "$HOME/.bashrc"

    esc=$(printf "\e")
    Fred="$esc[31m"
    f="$esc[39m"
    B="$esc[01m"
    b="$esc[22m"

    PS1=$B'[ '$Fred'nix-shell'$f' ]-'$b"$PS1"

    unset esc Fred f B b
  '';
}
