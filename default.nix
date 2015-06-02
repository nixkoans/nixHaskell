{ mkDerivation, stdenv, haskellPackages ? (import <nixpkgs> {}).haskellPackages }:
mkDerivation {
  pname = "NixHaskell";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  buildDepends = with haskellPackages; [
    base mtl
  ];
  buildTools = with haskellPackages; [
    cabal-install
  ];
  description = "From cabal to nix";
  license = stdenv.lib.licenses.mit;
}
