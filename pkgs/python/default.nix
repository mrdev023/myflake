{
  maintainers,
  pkgs,
  sources
}:

{
  mkdocs-render-swagger-plugin = pkgs.callPackage ./mkdocs-render-swagger-plugin.nix { inherit maintainers; source = sources.mkdocs-render-swagger-plugin; };
}