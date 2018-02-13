# Package management

{ config, lib, modulesPath, options, pkgs }:

let 

  terminalApps = with pkgs; [
    git
    tmux
    vim
    zsh
  ];

  desktopApps = with pkgs; [
    firefox-bin
  ];

  i3Packages = with pkgs; {
    inherit
      i3
      i3lock-fancy
      i3status;
  };

in {

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs;
      (builtins.attrValues (
        i3Packages // {}
      ))
      ++ terminalApps
      ++ desktopApps;
}

