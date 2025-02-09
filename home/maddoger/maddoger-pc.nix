{
  pkgs,
  ...
}: {
  imports = [
    ./global
    #./features/desktop/hyprland
    #./features/desktop/wireless
    #./features/rgb
    #./features/productivity
    #./features/pass
    #./features/games
    #./features/games/star-citizen.nix
    #./features/games/shadps4.nix
  ];


  home.packages = [
    # # It is sometimes useful to fine-tune packages, for example, by applying
    # # overrides. You can do that directly here, just don't forget the
    # # parentheses. Maybe you want to install Nerd Fonts with a limited number of
    # # fonts?
    # (pkgs.nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })

    pkgs.bitwarden-desktop
    #pkgs.vscode
    pkgs.ghostty
  ];

  programs = {
    home-manager.enable = true;
    vscode.enable = true;
    firefox.enable = true;
  };

  # Red
  #wallpaper = pkgs.wallpapers.aenami-dawn;

  #  ------   -----   ------
  # | DP-3 | | DP-1| | DP-2 |
  #  ------   -----   ------
  # monitors = [
  #   {
  #     name = "DP-1";
  #     width = 2560;
  #     height = 1080;
  #     workspace = "1";
  #     primary = true;
  #   }
  #   {
  #     name = "DP-2";
  #     width = 1920;
  #     height = 1080;
  #     position = "auto-right";
  #     workspace = "2";
  #   }
  # ];
}
