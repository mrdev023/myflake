{ pkgs }:

let
  sources = import ../_sources/generated.nix { inherit (pkgs) fetchgit fetchurl fetchFromGitHub dockerTools; };
  packages = [
    (import ./go { inherit pkgs sources; })
    (import ./node { inherit pkgs sources; })
  ];
in 
pkgs.lib.foldl (a: b: a // b) {} packages