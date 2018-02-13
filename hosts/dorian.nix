# Local configuration for dorian (ThinkPad X220)

{ config, lib, modulesPath, options }:

{
  boot.initrd.luks.devices = [
    {
      name = "root";
      device = "/dev/disk/by-uuid/e47185ca-2a35-4d2f-8db8-6964a18797b8";                                                                       
      preLVM = true;
    }
  ];
  
  networking = {
    hostName = "dorian";
  };
}
