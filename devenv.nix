{ ... }:

{
  languages = {
    rust = {
      enable = true;
      channel = "stable";
      components = [ "rustc" "cargo" "clippy" "rustfmt" "rust-analyzer" ];
    };
    nix.enable = true;
    shell.enable = true;
  };

  pre-commit.hooks = {
    rustfmt.enable = true;
    clippy.enable = true;
    actionlint.enable = true;
    commitizen.enable = true;
    markdownlint.enable = true;
    nixpkgs-fmt.enable = true;
  };

  devcontainer.enable = true;
  dotenv.enable = true;
  difftastic.enable = true;
}
