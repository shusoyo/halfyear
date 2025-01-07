{
  description = "ss's personal blog";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs }: let
    systems = [ "x86_64-linux" "x86_64-darwin" ];

    for-all-system = f: nixpkgs.lib.genAttrs
      systems (system: f nixpkgs.legacyPackages.${system})
    ;
  in {
    packages = for-all-system (pkgs: {
      default = pkgs.stdenvNoCC.mkDerivation rec {
        name = "halfyear font setup";

        src = ./.;

        noto-font-cjk-sc-ttf = pkgs.fetchFromGitHub {
          owner = "notofonts";
          repo  = "noto-cjk";
          rev   = "Serif2.003";
          hash  = "sha256-mfbBSdJrUCZiUUmsmndtEW6H3z6KfBn+dEftBySf2j4=";
          sparseCheckout = [ "Serif/OTC" ];
        };

        kaiti-otf = pkgs.fetchurl {
          url = "https://github.com/dolbydu/font/raw/refs/heads/master/unicode/Adobe%20Kaiti%20Std.otf";
          sha256 = "sha256-COdgFJqlKoUuGTBsyaWstcUKyGkN2FoU4HhLeno5buw=";
        };

        buildPhase = ''
          mkdir fonts
          ln -s ${noto-font-cjk-sc-ttf}/Serif/OTC fonts/noto-font-cjk-sc-ttf
          mkdir -p fonts/kaiti
          ln -s ${kaiti-otf} fonts/kaiti/kaiti.otf
          mkdir -p fonts/fira-code
          ln -s ${pkgs.fira-code}/share/fonts fonts/fira-code
        '';

        installPhase = ''
          cp -r fonts $out
        '';

        meta = with pkgs.lib; {
          description = "halfyear font setup";
          platforms = platforms.all;
        };
      };
    });
  };
}
