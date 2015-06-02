with (import <nixpkgs> {}).pkgs;
let pkg = haskellngPackages.callPackage
            ({ mkDerivation, base, stdenv }:
             mkDerivation {
               pname = "NixHaskell";
               version = "0.1.0.0";
               src = ./.;
               isLibrary = false;
               isExecutable = true;
               buildDepends = [ base ];
               description = "From cabal to nix";
               license = stdenv.lib.licenses.mit;
             }) {};
in
  pkg.env
