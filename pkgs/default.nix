{ lib, pkgs, ... }:

let
  sources = [
    (import ./go { inherit lib pkgs; })
    (import ./node { inherit lib pkgs; })
  ];
in 
lib.foldl (a: b: a // b) {} sources