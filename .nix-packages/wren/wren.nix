{ stdenv, lib, fetchgit }:
stdenv.mkDerivation {
  pname = "wren-console";
  version = "0.3.1";

  srcs = [
    (fetchgit {
      url = "https://github.com/joshgoebel/wren-console.git";
      sha256 = "DXKExXActz4+DayIrLcRBSXwDCQbxFGc+Rdmab88H/M=";
    })
    (fetchgit {
      url = "https://github.com/joshgoebel/wren-essentials.git";
      sha256 = "OlxsC7NOy4jxdXUASW2i1XWeIqKhNFmchOYCPLBuKZw=";
    })
  ];

  sourceRoot = ".";

  installPhase = ''
    mv wren-essentials wren-console/deps/
    pushd wren-console/projects/make/
    make
    pushd ../../bin/
    mkdir -p $out/bin
    cp wrenc $out/bin/
    popd
    popd
  '';

  meta = with lib; {
    homepage = "https://wren.io/";
    description = "Wren language";
    platforms = platforms.linux;
  };
}
