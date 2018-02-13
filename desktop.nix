# Configuration for the desktop environment

{ config, pkgs, ... }:

{
  services.xserver = {
    enable = true;
    layout = "us";

    displayManager = {
      slim.enable = true;
      slim.defaultUser = "ctp";
    };

    windowManager.default = "i3";
    windowManager.i3.enable = true;

    xkbOptions = "caps:super, grp:shifts_toggle, parens:swap_brackets";
  };
}
