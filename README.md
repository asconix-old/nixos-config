# NixOS configuration

This repository contains the entire configuration for all my NixOS machines. You can apply it on a clean installed NixOS.

First of all ensure that all submodules are cloned. You can determine all submodules via:

```bash
$ git submodule--helper list
```

To clone them, run the following command:

```bash
$ git submodule update --init
$ git submodule foreach git pull origin master
```

Finally apply all Nix definitions:

```bash
# nixos-rebuild switch
```

