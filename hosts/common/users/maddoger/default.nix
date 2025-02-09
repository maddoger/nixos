{
  pkgs,
  config,
  lib,
  ...
}: let
  ifTheyExist = groups: builtins.filter (group: builtins.hasAttr group config.users.groups) groups;
in {
  users.users.maddoger = {
    isNormalUser = true;
    description = "Vitaliy Syrchikov";
    initialPassword = "1234568";
    #shell = pkgs.fish;
    extraGroups = ifTheyExist [
      "docker"
      "audio"
      "video"
      "wheel"
      "networkmanager"
    ];
    packages = [pkgs.home-manager];
  };

  home-manager.users.maddoger = import ../../../../home/maddoger/${config.networking.hostName}.nix;

  # security.pam.services = {
  #   swaylock = {};
  # };
}
