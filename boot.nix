# Boot configuration

{ config, lib, modulesPath, options }:
{
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
}

