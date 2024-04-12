{ pkgs }:

let
  sources = [
    (import ./go { inherit pkgs; })
    (import ./node { inherit pkgs; })
  ];
in 
pkgs.lib.foldl (a: b: a // b) {} sources