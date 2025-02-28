{
  pkgs,
  ...
}: {
  services = {
    xserver = {
      desktopManager.gnome = {
        enable = true;
        extraGSettingsOverridePackages = [ pkgs.mutter ];
        extraGSettingsOverrides = ''
          [org.gnome.mutter]
          experimental-features=['scale-monitor-framebuffer']
        '';
      };
      displayManager.gdm = {
        enable = true;
        autoSuspend = false;
      };
    };
    # gnome.core-utilities.enable = false;
  };
}
