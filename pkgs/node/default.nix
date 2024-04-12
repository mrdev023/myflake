{
  maintainers,
  pkgs,
  sources
}:

{
  maildev = pkgs.callPackage ./maildev.nix { source = sources.maildev; };
}