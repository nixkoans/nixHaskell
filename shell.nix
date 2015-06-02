with (import <nixpkgs> {}).pkgs;
let
  ghc = haskell.packages.ghc7101.ghcWithPackages
          (pkgs: with pkgs; [ aeson lens monad-par ]);
in stdenv.mkDerivation {
  name = "nixHaskell";
  buildInputs = [ ghc ];
  shellHook = "eval $(grep export ${ghc}/bin/ghc)";
}
