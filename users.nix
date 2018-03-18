# User management

{ config, lib, modulesPath, options, pkgs }:

{
  users.extraUsers.root.openssh.authorizedKeys.keyFiles =
    [ ./secrets/users/ctp/id_rsa.pub ]; 

  users.defaultUserShell = pkgs.fish;

  users.extraUsers.ctp = {
    description = "Christoph Pilka";
    uid = 1000;
    isSystemUser = false;
    isNormalUser = true;
    group = "users";
    extraGroups = [ "wheel" ];
    home = "/home/ctp";
    shell = pkgs.fish;
    createHome = true;
    openssh.authorizedKeys.keyFiles =
      [ ./secrets/users/ctp/id_rsa.pub ];
  };
}

