{ pkgs, ... }:

{
  maildev = pkgs.callPackage ./maildev.nix {};
}