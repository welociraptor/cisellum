#!/usr/bin/bash

# Fish shell
sudo apt install --yes fish

# Proto

# Required dependencies..
sudo apt install --yes git unzip gzip xz-utils

# Install script
bash <(curl -fsSL https://moonrepo.dev/install/proto.sh) --no-profile --yes

# Set path and activate on shell startup
fish -c fish_add_path ~/.proto/bin/
echo "proto activate fish | source" >> ~/.config/conf.d/proto.fish
cp prototools ~/.proto/.prototools

# Cinc workstation

curl -O https://downloads.cinc.sh/files/stable/cinc-workstation/25.2.1075/debian/12/cinc-workstation_25.2.1075-1_amd64.deb
sudo dpkg -i cinc-workstation_25.2.1075-1_amd64.deb
rm cinc-workstation_25.2.1075-1_amd64.deb

# Finish bootstrapping with running apt upgrade

sudo apt ugprade
