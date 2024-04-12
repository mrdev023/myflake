{
  lib,
  buildNpmPackage,
  source,

  # Dependencies
  nodejs_18,
}:

buildNpmPackage {
  inherit (source) src pname version;

  nodejs = nodejs_18;
  dontNpmBuild = true;

  # https://github.com/NixOS/nixpkgs/blob/master/doc/languages-frameworks/javascript.section.md#prefetch-npm-deps-javascript-buildnpmpackage-prefetch-npm-deps
  npmDepsHash = "sha256-2JGA9x5t17EoE7JZeYhorsKfTXM1jSgOWBp/Npzn0d4=";
}