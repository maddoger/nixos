{pkgs, ...}: {
  imports = [
    ./bash.nix
    ./zsh.nix
    ./git.nix
    # ./bat.nix
    # ./direnv.nix
    # ./gh.nix
    # ./gpg.nix
    # ./jujutsu.nix
    # ./lyrics.nix
    # ./nushell.nix
    # ./nix-index.nix
    # ./pfetch.nix
    # ./ssh.nix
    # ./xpo.nix
    # ./fzf.nix
    # ./jira.nix
  ];
  home.packages = with pkgs; [
    neofetch
    mise
    wget
    comma # Install and run programs by sticking a , before them
    # distrobox # Nice escape hatch, integrates docker images with my environment

    bc # Calculator
    bottom # System viewer
    ncdu # TUI disk usage
    eza # Better ls
    ripgrep # Better grep
    fd # Better find
    httpie # Better curl
    jq # JSON pretty printer and manipulator
    timer # To help with my ADHD paralysis

    nixd # Nix LSP
    alejandra # Nix formatter
    nixfmt-rfc-style
    nvd # Differ
    nix-diff # Differ, more detailed
    nix-output-monitor
    nh # Nice wrapper for NixOS and HM
  ];
}
