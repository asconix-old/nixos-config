# Configuration of audio setup

{ config, lib, modulesPath, options, pkgs }:

{
  boot.kernelModules = [ "snd-seq" "snd-rawmidi" ];
  hardware.pulseaudio.enable = true;
  hardware.pulseaudio.package = pkgs.pulseaudioFull;
}
