# Localization

{ config, lib, modulesPath, options }:

{ 
  time.timeZone = "Europe/Oslo";

  i18n = {
    consoleFont = "Lat2-Terminus16";
    consoleKeyMap = "us";
    defaultLocale = "en_US.UTF-8";
  };
}

