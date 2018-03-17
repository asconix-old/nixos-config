# Local configuration for hab (ThinkPad X270)

{ config, lib, modulesPath, options }:

{
  boot.initrd.luks.devices = [
    {
      name = "root";
      device = "/dev/disk/by-uuid/becb1b4e-9d85-460c-9256-cba0ba53416b";
      preLVM = true;
    }
  ];
 
  networking = {
    hostName = "hab";
  };
}
