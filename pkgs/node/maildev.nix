{
  lib,
  buildNpmPackage,
  fetchFromGitHub,

  # Dependencies
  nodejs_18,
}:

buildNpmPackage {
  pname = "maildev";
  version = "v2.1.0";
  nodejs = nodejs_18;
  dontNpmBuild = true;
  src = fetchFromGitHub {
    owner = "maildev";
    repo = "maildev";
    rev = "v2.1.0";
    sha256 = "lTLhQ+gKQvfagKp0Ig+uOGwkUtzORaY1TzIkFOcoO3I=";
  };
  npmDepsHash = "sha256-2JGA9x5t17EoE7JZeYhorsKfTXM1jSgOWBp/Npzn0d4=";
}