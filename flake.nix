{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    wren-console.url = "github:TressaDanvers/wren-console";
  };
  
  outputs = { nixpkgs, flake-utils, wren-console, ... }:
    flake-utils.lib.eachDefaultSystem (system: let
      pkgs = nixpkgs.legacyPackages.${system};
      wrenc = wren-console.packages.${system}.default;
    in {
      devShells.default = pkgs.mkShell {
        buildInputs = with pkgs; [ exercism wrenc ];
        shellHook = ''
          export PS1="\[\033[1;32m\](exercism)\[\033[0m\] $PS1"
        '';
      };
    });
}
