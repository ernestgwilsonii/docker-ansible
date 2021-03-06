################################################################################
# ansible - https://www.ansible.com
# REF: https://github.com/ansible/ansible
# Ansible 2.6 "Heartbreaker" Release Notes - https://github.com/ansible/ansible/blob/v2.7.0/changelogs/CHANGELOG-v2.6.rst
# Ansible 2.5 "Kashmir" Release Notes - https://github.com/ansible/ansible/blob/stable-2.5/changelogs/CHANGELOG-v2.5.rst
# Command line tool from a Docker container
#####################################################
# Clone
git clone https://github.com/ernestgwilsonii/docker-ansible.git

# Login to Docker registry
docker login

# Build
docker build --no-cache -t ernestgwilsonii/ansible:2.7.0 .

# Test
docker run --rm ernestgwilsonii/ansible:2.7.0 ansible --version

# Upload to Docker registry
docker push ernestgwilsonii/ansible:2.7.0
################################################################################


################################################################################
# Run #
#######

# Create a local /etc/ansible
sudo mkdir -p /etc/ansible
sudo chmod -R a+rwx /etc/ansible
# Edit Docker preferences on MAC and add "File Sharing" location: /etc/ansible

# Setup an "ansible" alias for BASH
alias 'ansible=docker run --rm -v /etc/ansible:/etc/ansible ernestgwilsonii/ansible:2.7.0 ansible'

# Test
ansible --version


# Create local file for use later if a bash alias (above) is not lazy enough!
sudo echo -en '#!/bin/bash\ndocker run --rm -v /etc/ansible:/etc/ansible ernestgwilsonii/ansible:2.7.0 ansible "$@"' > /usr/local/bin/ansible && sudo chmod +x /usr/local/bin/ansible
sudo echo -en '#!/bin/bash\ndocker run --rm -v /etc/ansible:/etc/ansible ernestgwilsonii/ansible:2.7.0 ansible-playbook "$@"' > /usr/local/bin/ansible-playbook && sudo chmod +x /usr/local/bin/ansible-playbook

# MAC notes
brew install http://git.io/sshpass.rb
