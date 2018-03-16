# Configuration for the desktop environment

{ config, lib, modulesPath, options, pkgs }:

let emacs = import ./emacs.nix { inherit pkgs; };
in {
  services.xserver = {
    enable = true;
    layout = "us";

    synaptics = {
      enable = true;
      twoFingerScroll = true;
      palmDetect = true;
    };

    xkbOptions = "caps:super, grp:shifts_toggle, parens:swap_brackets";

    displayManager.sessionCommands = "${pkgs.xorg.xhost}/bin/xhost +SI:localuser:$USER";
  };

  services.xserver.windowManager.session = lib.singleton {
    name = "exwm";
    start = ''
      ${emacs}/bin/emacs --daemon -f exwm-enable
      ${emacs}/bin/emacsclient -c
    '';
  };

  # Install Emacs and set as default editor
  services.emacs.install = true;
  services.emacs.defaultEditor = true;

  fonts = {
    fonts = with pkgs; [
      dejavu_fonts
      font-awesome-ttf
      freefont_ttf
      google-fonts
      inconsolata
      libertine
      noto-fonts-cjk
      noto-fonts-emoji
      opensans-ttf
      powerline-fonts
    ];
    fontconfig = {
      defaultFonts = {
        monospace = [ "Insconsolata" ];
        sansSerif = [ "Open Sans" ];
        serif     = [ "Linux Libertine" ];
      };
    };
  };

  programs = {
    fish.enable = true;
    java.enable = true;
    ssh.startAgent = true;
  };
}
