# User management

{ config, lib, modulesPath, options }:

{
  users.extraUsers.ctp = {
    isNormalUser = true;
    group = "users";
    uid = 1000;
    extraGroups = [ "wheel" ];
    createHome = true;
    home = "/home/ctp";
    shell = "/run/current-system/sw/bin/zsh";
  };
}

