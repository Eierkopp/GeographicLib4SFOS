# GeographicLib4SFOS
Build GeographicLib for Sailfish OS

This set of scripts requires a Docker installation on Linux. 

Calling `run_sdk.sh` will 

- download the version $VERSION of the source release of GeographicLib
- create a output directory
- pull the latest sailfish sdk docker image 
- build GeographicLib for all suported architectures
- copy the packages to the output directory

