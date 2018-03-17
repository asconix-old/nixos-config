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

Set a symbolic link for the host that you want to provision and orchestrate:

```
# ln -s hosts/<host_type>/<host_name>.nix host.nix
```


Finally apply all Nix definitions:

```bash
# nixos-rebuild switch
```

