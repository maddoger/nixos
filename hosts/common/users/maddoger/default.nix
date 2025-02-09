{
  pkgs,
  config,
  lib,
  ...
}: let
  ifTheyExist = groups: builtins.filter (group: builtins.hasAttr group config.users.groups) groups;
in {
  users.mutableUsers = false;
  users.users.maddoger = {
    isNormalUser = true;
    shell = pkgs.fish;
    extraGroups = ifTheyExist [
      "docker"
      "audio"
      "video"
      "wheel"
      "networkmanager"
    ];

    #openssh.authorizedKeys.keys = lib.splitString "\n" (builtins.readFile ../../../../home/maddoger/ssh.pub);
    #hashedPasswordFile = config.sops.secrets.maddoger-password.path;
    packages = [pkgs.home-manager];
  };

  # sops.secrets.maddoger-password = {
  #   sopsFile = ../../secrets.yaml;
  #   neededForUsers = true;
  # };

  home-manager.users.maddoger = import ../../../../home/maddoger/${config.networking.hostName}.nix;

  # security.pam.services = {
  #   swaylock = {};
  # };
}
