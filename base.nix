# Base configuration

{ config, lib, modulesPath, options }:

{
  system.stateVersion = "17.09";
  environment.variables.TERM = "vt100";
}

