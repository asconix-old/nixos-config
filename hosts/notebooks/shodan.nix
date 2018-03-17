# Local configuration for shodan (ThinkPad X280)

{ config, lib, modulesPath, options }:

{
  boot.initrd.luks.devices = [
    {
      name = "root";
      device = "/dev/disk/by-uuid/d912c8ef-84aa-49a3-94e2-74087e0d31d9";
      preLVM = true;
    }
  ];
 
  networking = {
    hostName = "shodan";
  };
}
