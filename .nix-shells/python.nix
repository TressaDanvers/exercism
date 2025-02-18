with import <nixpkgs> {};
mkShell {
  buildInputs = [ (python3.withPackages (python-pkgs: with python-pkgs; [ pytest ])) ];
  shellHook = ''. ../../.nix-shells/hook.sh'';
}
