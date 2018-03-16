# Package management

{ config, lib, modulesPath, options, pkgs }:

let 

  terminalApps = with pkgs; [
    curl
    fish
    git
    google-cloud-sdk
    manpages
    nixops
    pass
    tig
    tmux
    tree
    unzip
    vim
    wget
  ];

  desktopApps = with pkgs; [
    alacritty
    firefox-bin
    gnome3.evolution
    xorg.xev
  ];

in {

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs;
      terminalApps
      ++ desktopApps;
}

