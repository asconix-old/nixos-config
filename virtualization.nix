# Virtualization

{ config, lib, modulesPath, options }:

{
  virtualisation = {
    docker.enable = true;
    docker.autoPrune.enable = true;
  };
}

