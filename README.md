# Feusi Virtual Machine Image

This is a Vagrant Setup to create the Image for Feusi Students

This repository is structured as follows:

- `Vagrantfile` the entry point for the vagrant image compilation. For this setup, this file should almost never be touched. Instead, create a new script in the [scripts](scripts) directory.
- [scripts](scripts) contain all the manipulations done on top of the base image (which is ubuntu). More details on the configuration can be found below. Scripts are executed in "natural" alphanumeric sort (by using the UNIX `sort` command).
- [overrides](overrides) can be used to override or set configuration files. It is structured like the linux file system is and will apply all the overrides to the path where it is stored (starting on the root, e.g. `/`). 
- `Makefile` to simplify the build process. Contains procedures to `clean`, `build`, `package`, `ova` and `cleanbuildova`

## How to compile the Virtual Machine

To compile the Virtual Machine, you need to download:

- [Vagrant](https://www.vagrantup.com/) 
- [VirtualBox](https://www.virtualbox.org/) (you can use another provider, check the Vagrant documentation)
- UNIX-like system (if you use Windows, check that you have basic UNIX commands available or check the Makefile if you encounter errors)

Then, simply run `make cleanbuildova`, the OVA file will be stored in the `out/` directory. You'll also find a VM in VirtualBox.

## How to add or edit configuration

- If your configuration can be done by means of some simple commands, add a this commands to existing [scripts](scripts) or add a new one. Keep in mind the ordering. A python command can only be issued after the installation of python, and so on.
- If your configuration is easiest done by creating or replacing a configuration file, add it to the [overrides](overrides) directory. 

If you are a lecturer at feusi, you can contact me directly or create e Pull Request with the changes.

If you are a random visitor, feel free to fork this project and adapt it. 

Suggestions and improvements are always welcome!

## Image configuration

This image is based on the official `ubuntu/lunar64` ubuntu server image. 

- Feusi user with `feusi` as (initial) password
- Desktop Environment (Gnome)
- German locales
- Techstack for lectures
  - Python and Pipenv (we also set python3 as standard)
  - Docker and Docker Compose
  - Visual Studio Code (with extensions, i.e. for python)
- X11 instead of wayland (showed to work better as guest, may change in the future)


## TODOs

- Publish to Vagrant