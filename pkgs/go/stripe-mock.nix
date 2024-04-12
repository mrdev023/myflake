{
  lib,
  buildGoModule,
  source,
}:

buildGoModule {
  inherit (source) pname version src;

  vendorHash = null;
}