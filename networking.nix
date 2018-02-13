# Network configuration

{ config, lib, options, modulesPath }:

{
  networking = {
    wireless.enable = true;
    
    wireless.networks = {
      "Asconix Systems" = {
        psk = lib.removeSuffix "\n" (builtins.readFile ./secrets/psk_asconix_systems.key);
      };

      "BrewDog" = {
        psk = lib.removeSuffix "\n" (builtins.readFile ./secrets/psk_brewdog.key);
      };

      "Rautheim" = {
        psk = lib.removeSuffix "\n" (builtins.readFile ./secrets/psk_rautheim.key);
      };

      "WLAN-1C8620" = {
        psk = lib.removeSuffix "\n" (builtins.readFile ./secrets/psk_wlan_1c8620.key);
      };

      "YT4" = {
        psk = lib.removeSuffix "\n" (builtins.readFile ./secrets/psk_yt4.key);
      };

      "AIRPORT" = {};
      "espressohouse" = {};
      "Lorry Gjest" = {};
      "NSB_INTERAKTIV" = {};
      "wifi.flytoget.no" = {};
      "WIFIonICE" = {}; 
    };
  };
}
