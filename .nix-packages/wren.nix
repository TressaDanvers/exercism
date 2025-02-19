{ stdenv, lib, fetchFromGitHub }:
stdenv.mkDerivation {
  pname = "wren-console";
  version = "0.3.1";

  srcs = [
    (fetchFromGitHub {
      name = "wren-console";
      owner = "joshgoebel";
      repo = "wren-console";
      rev = "86264afab3cacb91cb0b18830006cea6f629cc8d";
      sha256 = "DXKExXActz4+DayIrLcRBSXwDCQbxFGc+Rdmab88H/M=";
    })
    (fetchFromGitHub {
      name = "wren-essentials";
      owner = "joshgoebel";
      repo = "wren-essentials";
      rev = "0d116a1658fdcd3a33496e5e0f69fbe9f01e5b38";
      sha256 = "OlxsC7NOy4jxdXUASW2i1XWeIqKhNFmchOYCPLBuKZw=";
    })
  ];


  sourceRoot = ".";

  installPhase = ''
    mv wren-essentials wren-console/deps/
    pushd wren-console/projects/make/
    make > /dev/null
    popd
    pushd wren-console/bin/
    mkdir -p $out/bin
    cp wrenc $out/bin/
    popd
  '';

  meta = with lib; {
    homepage = "https://wren.io/";
    description = "Wren language";
    platforms = platforms.linux;
  };
}
