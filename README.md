# My own flake with packages in dev before add it in nixpkgs

## How use it

```nix

inputs = {
  [...]
  myflake = {
    url = "github:mrdev023/myflake";
    inputs.nixpkgs.follows = "nixpkgs";
  };
  [...]
}
outputs = { [...], myflake }:
[...]
let
  myflake-pkgs = import myflake { inherit system; };
in
[...]
```

Then you can use with myflake-pkgs.maildev in your project

## How to update packages

Run `nix develop` or `nix-shell`

Then run `nvfetcher` inside current shell

## Packages available

- maildev : Node (Auto updated with nvfetcher)
- mkdocs-render-swagger-plugin : Python
- stripe-mock : Go (Auto updated with nvfetcher)

# https://github.com/berberman/nvfetcher?tab=readme-ov-file#installation