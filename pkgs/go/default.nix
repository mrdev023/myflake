{ pkgs }:

{
  stripeMock = pkgs.callPackage ./stripe-mock.nix { };
}