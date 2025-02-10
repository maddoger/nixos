{
  pkgs,
  ...
}: {
  # Set as default terminal
  xdg.mimeApps = {
    associations.added = {
      "x-scheme-handler/terminal" = "Ghostty.desktop";
    };
    defaultApplications = {
      "x-scheme-handler/terminal" = "Ghostty.desktop";
    };
  };

  home.packages = [
    pkgs.ghostty
  ];
}
