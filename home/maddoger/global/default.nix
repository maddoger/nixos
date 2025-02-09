{
  inputs,
  lib,
  pkgs,
  config,
  outputs,
  ...
}:
{
  imports =
    [
      #inputs.impermanence.nixosModules.home-manager.impermanence
      ../features/cli
    ]
    ++ (builtins.attrValues outputs.homeManagerModules);

  nix = {
    package = lib.mkDefault pkgs.nix;
    settings = {
      experimental-features = [
        "nix-command"
        "flakes"
        "ca-derivations"
      ];
      warn-dirty = false;
    };
  };

  home.username = lib.mkDefault "maddoger";
  home.homeDirectory = lib.mkDefault "/home/maddoger";
  home.stateVersion = lib.mkDefault "24.11";

  #colorscheme.mode = lib.mkOverride 1499 "dark";

  programs = {
    home-manager.enable = true;
    git.enable = true;
  };
}
