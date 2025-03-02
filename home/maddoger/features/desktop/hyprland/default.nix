{
  pkgs,
  config,
  ...
}: {
  imports = [
    ../common
  ];

  xdg.portal = {
    extraPortals = [pkgs.xdg-desktop-portal-wlr];
    config.hyprland = {
      default = ["wlr" "gtk"];
    };
  };


  wayland.windowManager.hyprland = {
    enable = true;
  };
};
