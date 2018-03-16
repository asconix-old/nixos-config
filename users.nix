# User management

{ config, lib, modulesPath, options, pkgs }:

{
  users.extraUsers.root.openssh.authorizedKeys.keyFiles =
    [ ./secrets/users/ctp/id_rsa.pub ]; 

  users.defaultUserShell = pkgs.fish;

  users.extraUsers.ctp = {
    isNormalUser = true;
    group = "users";
    uid = 1000;
    extraGroups = [ "wheel" ];
    createHome = true;
    home = "/home/ctp";
    shell = pkgs.fish;
    openssh.authorizedKeys.keyFiles =
      [ ./secrets/users/ctp/id_rsa.pub ];
  };
}

