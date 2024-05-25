# Docker build for gnuradio with external plugins


### Uses
* Uses Ubuntu 22.04 as base.
* Gnuradio 3.10 (from ubuntu repo)

### Tested SDR HW
* HackRF One.
Should still work should work for all osmocom enabled drivers in the ubuntu 22.04 package.

### Currently built Gnuradio modules
* gr-lora_sdr (https://github.com/tapparelj/gr-lora_sdr)
(Free free to send a PR for any additions)


### Dockerfiles
* Dockerfile-ubuntu-base - Ubuntu base and requirements
* Dockerfile-sdr-apps - SDR related packages from ubuntu-repo.
* Dockerfile-custom-builds - Source-code builds of gnuradio components.



### To build docker-image
> $ ./docker_build.sh

### To run image
> $ ./docker_run.sh

