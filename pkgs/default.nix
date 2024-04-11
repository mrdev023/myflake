{ lib, pkgs, ... }:

{
  goPackages = import ./go { inherit lib pkgs; };
  nodePackages = import ./node { inherit lib pkgs; };
}