with import <nixpkgs> {};
mkShell {
  buildInputs = [
    (python3.withPackages ( python-pkgs: with python-pkgs; [
      pytest
    ]))
  ];

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
