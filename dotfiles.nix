# Dotfiles

{ config, lib, modulesPath, options, pkgs }:

let dotfiles = pkgs.stdenv.mkDerivation {
  name = "dotfiles";

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
    "zsh/zshrc".source                = "${dotfiles}/zshrc";
    "zsh/lib/aliases.zsh".source      = "${dotfiles}/zsh/lib/aliases.zsh";
    "zsh/lib/appearance.zsh".source   = "${dotfiles}/zsh/lib/appearance.zsh";
    "zsh/lib/colors.zsh".source       = "${dotfiles}/zsh/lib/colors.zsh";
    "zsh/lib/completion.zsh".source   = "${dotfiles}/zsh/lib/completion.zsh";
    "zsh/lib/correction.zsh".source   = "${dotfiles}/zsh/lib/correction.zsh";
    "zsh/lib/directories.zsh".source  = "${dotfiles}/zsh/lib/directories.zsh";
    "zsh/lib/history.zsh".source      = "${dotfiles}/zsh/lib/history.zsh";
    "zsh/lib/key_bindings.zsh".source = "${dotfiles}/zsh/lib/key_bindings.zsh";
    "zsh/lib/misc".source             = "${dotfiles}/zsh/lib/misc.zsh";
    "zsh/lib/prompt.zsh".source       = "${dotfiles}/zsh/lib/prompt.zsh";
    "tmux/tmux.conf".source           = "${dotfiles}/tmux.conf";
  };
}
