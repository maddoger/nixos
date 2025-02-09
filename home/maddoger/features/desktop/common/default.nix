{
  pkgs,
  config,
  ...
}: {
  imports = [
    ./font.nix
  ];

  home.packages = [
    # # It is sometimes useful to fine-tune packages, for example, by applying
    # # overrides. You can do that directly here, just don't forget the
    # # parentheses. Maybe you want to install Nerd Fonts with a limited number of
    # # fonts?
    # (pkgs.nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })

    pkgs.bitwarden-desktop
    pkgs.ghostty
  ];

  programs = {
    home-manager.enable = true;
    vscode.enable = true;
    firefox.enable = true;
    brave.enable = true;
  };
}
