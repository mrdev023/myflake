{ pkgs }:

let
  maintainers = import ../maintainers;
  sources = import ../_sources/generated.nix { inherit (pkgs) fetchgit fetchurl fetchFromGitHub dockerTools; };
  packages = [
    (import ./go { inherit maintainers pkgs sources; })
    (import ./node { inherit maintainers pkgs sources; })
    # (import ./python { inherit maintainers pkgs sources; }) # Not work yet
  ];
in 
pkgs.lib.foldl (a: b: a // b) {} packages