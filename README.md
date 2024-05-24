# Docker build for gnuradio 3.10 with plugins for LoRa decode.

Tested with hackrf.

#### Dockerfile-ubuntu-base
Ubuntu base and requirements

#### Dockerfile-sdr-apps
SDR related packages from ubuntu-repo.

#### Dockerfile-custom-builds
Source-code builds of gnuradio components.


### To build image
./docker_build.sh

### To run image
./docker_run.sh

