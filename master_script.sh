#!/bin/bash

# Define your Vagrantfile content
VAGRANTFILE_CONTENT=$(cat <<EOL
# Your Vagrantfile content here
EOL
)

# Check if the Vagrantfile exists and if its content has changed
if [[ ! -f Vagrantfile ]] || [[ "$(cat Vagrantfile)" != "${VAGRANTFILE_CONTENT}" ]]; then
  echo "Writing the Vagrantfile..."
  echo "${VAGRANTFILE_CONTENT}" > Vagrantfile
fi

# Check if the Vagrant VMs are running
if vagrant status | grep -q "running"; then
  echo "Shutting down Vagrant VMs..."
  vagrant halt
else
  echo "Initializing and bringing up Vagrant VMs..."
  vagrant up
fi
