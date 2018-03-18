# Local configuration for shodan (ThinkPad X280)

{ config, lib, modulesPath, options }:

{
  boot.initrd.luks.devices = [
    {
      name = "root";
      device = "/dev/disk/by-uuid/a1f48d7e-2c71-47e6-8c8a-1ad83b42d1d2";
      preLVM = true;
    }
  ];
 
  networking = {
    hostName = "shodan";
  };
}
