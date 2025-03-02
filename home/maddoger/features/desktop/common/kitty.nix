{
  pkgs,
  ...
}: {
  # Set as default terminal
  xdg.mimeApps = {
    associations.added = {
      "x-scheme-handler/terminal" = "Kitty.desktop";
    };
    defaultApplications = {
      "x-scheme-handler/terminal" = "Kitty.desktop";
    };
  };

  home.packages = [
    pkgs.kitty
  ];
}
