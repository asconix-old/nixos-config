# Local configuration for whisper (ThinkPad T480)

{ config, lib, modulesPath, options }:

{
  boot.initrd.luks.devices = [
    {
      name = "root";
      device = "/dev/disk/by-uuid/xxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx";
      preLVM = true;
    }
  ];

  networking = {
    hostName = "whisper";
  };
}

