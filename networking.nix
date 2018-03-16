# Network configuration

{ config, lib, options, modulesPath }:

let
  wpa_supplicant_secrets = ./secrets/networking;
in {
  networking = {
    wireless.enable = true;
    
    wireless.networks = {
      "Asconix Systems" = {
        psk = lib.removeSuffix "\n" (builtins.readFile (wpa_supplicant_secrets + "/psk_asconix_systems.key"));
      };

      "BrewDog" = {
        psk = lib.removeSuffix "\n" (builtins.readFile (wpa_supplicant_secrets + "/psk_brewdog.key"));
      };

      "How do I computer?" = {
        psk = lib.removeSuffix "\n" (builtins.readFile (wpa_supplicant_secrets + "/psk_how_do_i_computer.key"));
      };

      "Rautheim" = {
        psk = lib.removeSuffix "\n" (builtins.readFile (wpa_supplicant_secrets + "/psk_rautheim.key"));
      };

      "WLAN-1C8620" = {
        psk = lib.removeSuffix "\n" (builtins.readFile (wpa_supplicant_secrets + "/psk_wlan_1c8620.key"));
      };

      "YT4" = {
        psk = lib.removeSuffix "\n" (builtins.readFile (wpa_supplicant_secrets + "/psk_yt4.key"));
      };

      "AIRPORT" = {};
      "espressohouse" = {};
      "Leos_surf" = {};
      "Lorry Gjest" = {};
      "NSB_INTERAKTIV" = {};
      "wifi.flytoget.no" = {};
      "WIFIonICE" = {}; 
    };
  };
}

