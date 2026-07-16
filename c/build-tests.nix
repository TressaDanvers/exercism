{ self, pkgs, system, src, unity, ... }: let
  cflags = "-std=c99 -g -Wall -Wextra -pedantic -Werror -Wmissing-declarations -DUNITY_SUPPORT_64 -DUNITY_OUTPUT_COLOR";
  asanflags = "-fsanitize=address -fno-common -fno-omit-frame-pointer";
  libs = "-lm";

  build = { name, flags }: pkgs.stdenv.mkDerivation {
    inherit name src;

    buildInputs = with pkgs; [ gcc ];

    buildPhase = ''
      mkdir test-framework
      ln -s ${unity}/src/unity.c test-framework/unity.c
      ln -s ${unity}/src/unity.h test-framework/unity.h
      ln -s ${unity}/src/unity_internals.h test-framework/unity_internals.h
      gcc ${flags} -I${unity}/src ${unity}/src/unity.c ./*.c -o ${name} ${libs}
    '';

    installPhase = ''
      mkdir -p $out/bin
      cp ${name} $out/bin/
    '';
  };
in {
  packages.default = build { name = "tests.out"; flags = cflags; };
  apps.default = { type = "app"; program = "${self.packages.${system}.default}/bin/tests.out"; };

  packages.memcheck = build { name = "memcheck.out"; flags = "${asanflags} ${cflags}"; };
  apps.memcheck = { type = "app"; program = "${self.packages.${system}.memcheck}/bin/memcheck.out"; };
}
