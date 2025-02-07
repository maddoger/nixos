{ lib, config, pkgs, ... }:

let 
  cfg = config.main-user;
in
{
  options.main-user = {
    enable
      = lib.mkEnableOption "enable user module";

    userName = lib.mkOption {
      default = "user";
      description = ''
        username
      '';
    };

    description = lib.mkOption { 
      default = "";
      description = ''
        user description
      '';
    };
  };

  config = lib.mkIf cfg.enable {
    users.users.${cfg.userName} = {
      isNormalUser = true;
      description = cfg.description;
      extraGroups = [ "networkmanager" "wheel" ];
      shell = pkgs.zsh;
    };
  };
}
