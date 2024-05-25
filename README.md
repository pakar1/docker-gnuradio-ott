# Docker build for gnuradio with external plugins

It's intended audience is to allow a stable enviroment for GnuRadio.
As it has a development-enviroment included it's secondary audience is to assist GnuRadio OOT module developers when migrating to GnuRadio 3.10.

### Uses
* Uses Ubuntu 22.04 as base.
* Gnuradio 3.10 (from ubuntu repo)

### Tested SDR HW
* HackRF One.
Should still work should work for all osmocom enabled drivers in the ubuntu 22.04 package.

### Currently compiled Gnuradio modules
* gr-lora_sdr (https://github.com/tapparelj/gr-lora_sdr)
* gr-satellites (https://github.com/daniestevez/gr-satellites)
* gr-adapt (https://github.com/karel/gr-adapt)
<br /><br />(Free free to send a PR for any additions)


### Dockerfiles
* Dockerfile-ubuntu-base - Ubuntu base and requirements
* Dockerfile-sdr-apps - SDR related packages from ubuntu-repo.
* Dockerfile-custom-builds - Source-code builds of gnuradio components.



### To build docker-image
> $ ./docker_build.sh

### To run image
> $ ./docker_run.sh

### Shared folder.
* Create /home/gnuradio on your host and have this as shared storage between container and host. Allows gnuradio settings etc to be saved between builds/sessions.
* As /home/gnuradio is setup to be shared it will make life easier if you update "Dockerfile-custom-builds" and set the uid to the same UID as your normal user.
