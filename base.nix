# Base configuration

{ config, lib, modulesPath, options }:

{
  system.stateVersion = "18.03";
  environment.variables.TERM = "xterm-256color";
}

