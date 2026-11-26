# kattakath.com, on the fleet's shared repo shape (github:ismailkattakath/repo-kit).
# A LEAN flake: its only job is the generated files and their drift checks. None of them is
# part of the site — pages.yml drops them from the Pages artifact.
#
#   nix develop           → the kit's devShell (write-files)
#   nix fmt               → treefmt (nixfmt)
#   nix flake check       → treefmt + one files:<path> drift check per generated file
#   nix run .#write-files → regenerate LICENSE (CC-BY-4.0), .envrc, .editorconfig, devcontainer.json
{
  description = "kattakath.github.io — the kattakath.com family site";

  inputs = {
    repo-kit.url = "github:ismailkattakath/repo-kit";
    nixpkgs.follows = "repo-kit/nixpkgs";
    flake-parts.follows = "repo-kit/flake-parts";
  };

  outputs =
    inputs@{ flake-parts, repo-kit, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      imports = [ repo-kit.flakeModules.default ];

      repoKit = {
        name = "kattakath.github.io";
        license = {
          spdx = "CC-BY-4.0";
          year = "2026";
          holder = "Ismail Kattakath";
        };
      };
    };
}
