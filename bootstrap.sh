#!/bin/sh -x

# Bootstrap script to install Cinc workstation which will be used for provisioning

curl -O https://downloads.cinc.sh/files/stable/cinc-workstation/25.2.1075/debian/12/cinc-workstation_25.2.1075-1_amd64.deb
sudo dpkg -i cinc-workstation_25.2.1075-1_amd64.deb
rm cinc-workstation_25.2.1075-1_amd64.deb
