{
  pkgs,
  config,
  ...
}: {
  imports = [
    ./font.nix
    ./ghostty.nix
    #./gtk.nix
    #./alacritty.nix
  ];

  home.packages = [
    # # It is sometimes useful to fine-tune packages, for example, by applying
    # # overrides. You can do that directly here, just don't forget the
    # # parentheses. Maybe you want to install Nerd Fonts with a limited number of
    # # fonts?
    # (pkgs.nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })

    pkgs.bitwarden-desktop
    (pkgs.writeShellScriptBin "xterm" ''
      handlr launch x-scheme-handler/terminal -- "$@"
    '')
    (pkgs.writeShellScriptBin "xdg-open" ''
      handlr open "$@"
    '')
  ];

  programs = {
    vscode.enable = true;
    firefox.enable = true;
    brave.enable = true;
  };

  dconf = {
    enable = true;
    settings."org/gnome/desktop/interface".color-scheme = "prefer-dark";
  };

  xdg.mimeApps.enable = true;
  #xdg.mimeApps.defaultApplications = {
  #   "terminal" = "ghostty";
  # };

  xdg.portal = {
    enable = true;
    extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
    configPackages = [ pkgs.xdg-desktop-portal-gtk ];
    xdgOpenUsePortal = true;
  };
}
