# Dotfiles

{ config, lib, modulesPath, options, pkgs }:

let dotfiles = pkgs.stdenv.mkDerivation {
  name = "cpilka-dotfiles";

  srcs = [
    ./dotfiles
  ];

  installPhase = ''
    mkdir -p $out
    cp -r ./* $out/
  '';
};
in {
  environment.etc = {
    "tmux/tmux.conf".source                = "${dotfiles}/tmux/tmux.conf";
    "alacritty.yml".source                 = "${dotfiles}/alacritty/alacritty.yml";
  };
}
