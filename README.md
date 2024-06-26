# Docker build for gnuradio with external plugins

The docker's intended to:
* To allow a stable enviroment for GnuRadio runtime.
* To allow users a easy way to build GnuRadio OTT modules without messing with their day-to-day system.
* To allow OTT module developers a simple enviroment when porting from previous version of GnuRadio.

### Uses
* Uses Ubuntu 24.04 as base.
* Gnuradio 3.10 (from ubuntu repo)

### Tested SDR HW
* HackRF One.
<br /><br />Should still work for all osmocom enabled drivers in the ubuntu 24.04 package.

### Currently compiled Gnuradio modules
* gr-lora_sdr (https://github.com/tapparelj/gr-lora_sdr)
* gr-satellites (https://github.com/daniestevez/gr-satellites)
* gr-adapt (https://github.com/karel/gr-adapt)
* gr-inspector (https://github.com/radioconda/gr-inspector)
* gr-difi (https://github.com/DIFI-Consortium/gr-difi.git)
* gr-satnogs (https://gitlab.com/librespacefoundation/satnogs/gr-satnogs/-/tree/gnuradio-3.10?ref_type=heads)
* gr-ieee802-15-4 (https://github.com/bastibl/gr-ieee802-15-4.git)
* gr-iridium (https://github.com/muccc/gr-iridium.git)
<br /><br />(Feel free to send a PR for any additions)

### OTT modules included from Ubuntu repo
* gr-air-modes
* gr-fosphor
* gr-funcube
* gr-gsm
* gr-hpsdr
* gr-iqbal
* gr-limesdr
* gr-osmosdr
* gr-radar
* gr-rds
<br />

### Dockerfiles
* Dockerfile-ubuntu-base - Ubuntu base and requirements
* Dockerfile-sdr-apps - SDR related packages from ubuntu-repo.
* Dockerfile-custom-builds - Source-code builds of gnuradio components.



### To build docker-image
> $ ./docker_build.sh

### To run image
> $ ./docker_run.sh

#### Set module path
Before starting gnuradio-companion the module path must be set manually at the moment.
> $ export PYTHONPATH=/usr/lib/python3.12/dist-packages:/usr/lib/python3.12/site-packages:$PYTHONPATH


### Shared folder.
* Create /home/gnuradio on your host and have this as shared storage between container and host. Allows gnuradio settings etc to be saved between builds/sessions.
* As /home/gnuradio is setup to be shared it will make life easier if you update "Dockerfile-custom-builds" and set the uid to the same UID as your normal user.


## TODO's
* Github actions to build docker images.
* GnuRadio examples
* Some type of setup to be able to run network-accessible things such as https://github.com/gnuradio/gr-bokehgui
* Split up what to be included in the docker-image and make each source-code module install it's own dependencies.
