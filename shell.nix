with (import <nixpkgs> {}).pkgs;
let
  ghc = haskell.packages.ghc7101.ghcWithPackages
          (pkgs: with pkgs; [ alex happy yesod-bin ]);
in stdenv.mkDerivation {
  name = "nixHaskell";
  buildInputs = [ ghc ];
  shellHook = "eval $(grep export ${ghc}/bin/ghc)";
}
