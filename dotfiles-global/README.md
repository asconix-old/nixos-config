# dotfiles

Dotfiles are a general approach how to customize a Unix, Linux or Mac OS X system. The dotfiles in this repository are my custom configurations for Vim, zsh, Tmux, Git, wget etc.

## Installation

First of all clone this repository in your Home-Directory:

```bash
$ cd ~
$ git clone https://github.com/asconix/dotfiles
$ mv dotfiles .dotfiles
```

... and symlink the configuration files for the services/applications you're running as described below.

### Vim

```bash
$ ln -sf .dotfiles/vim/.vimrc ~/.vimrc
$ ln -sf .dotfiles/.vim ~/.vim
```

Additionally ensure that submodules are cloned before launching Vim:

```bash
$ git submodule update --init
```

### Z shell (Zsh)

```bash
$ ln -sf .dotfiles/zsh/zshrc /etc/zsh/zshrc
$ ln -sf .dotfiles/zsh/lib /etc/zsh/lib
```

### Wget

```bash
$ ln -sf .dotfiles/wget/.wgetrc ~/.wgetrc
```

### Git

```bash
$ ln -sf .dotfiles/git/.gitconfig ~/.gitconfig
```

### Tmux 2

```bash
$ ln -sf .dotfiles/tmux/tmux.conf /etc/tmux.conf
```

## Authors

This collection of configuration files is managed by [Christoph Pilka](https://github.com/asconix).

## License

Source code in this repository is published under MIT License, see LICENSE file for full details.

