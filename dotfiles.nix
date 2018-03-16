# Dotfiles

{ config, lib, modulesPath, options, pkgs }:

let dotfiles = pkgs.stdenv.mkDerivation {
  name = "ctp-dotfiles";

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
    "i3.conf".source                       = "${dotfiles}/i3/i3.conf";
    "tmux/tmux.conf".source                = "${dotfiles}/tmux/tmux.conf";
    "vim/vimrc".source                     = "${dotfiles}/vimrc";
    "vim/vim/autoload/pathogen.vim".source = "${dotfiles}/vim/autoload/pathogen.vim";
    "vim/vim/colors/smyck.vim".source      = "${dotfiles}/vim/colors/smyck.vim";
    "alacritty.yml".source                 = "${dotfiles}/alacritty/alacritty.yml";
  };
}
