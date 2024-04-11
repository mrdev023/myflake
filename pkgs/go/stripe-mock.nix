{
  lib,
  buildGoModule,
  fetchFromGitHub,
}:

buildGoModule {
  pname = "stripe-mock";
  version = "v0.183.0";
  vendorHash = null;
  src = fetchFromGitHub {
    owner = "stripe";
    repo = "stripe-mock";
    rev = "v0.183.0";
    sha256 = "hdcINPrlE4bjSCOUJG64Ok1gz+jwYhf2RzT+eBK7dPM=";
  };
}