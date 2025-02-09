{ lib, config, ... }:

{
  home.username = lib.mkDefault "maddoger";
  home.description = lib.mkDefault "Vitaliy Syrchikov";
  home.homeDirectory = lib.mkDefault "/home/${config.home.username}";
  home.stateVersion = lib.mkDefault "24.11";

  #colorscheme.mode = lib.mkOverride 1499 "dark";
}
