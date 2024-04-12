{ pkgs, sources }:

{
  stripe-mock = pkgs.callPackage ./stripe-mock.nix { source = sources.stripe-mock; };
}