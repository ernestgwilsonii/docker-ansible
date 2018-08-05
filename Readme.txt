################################################################################
# ansible - https://www.ansible.com
# REF: https://github.com/ansible/ansible
# Ansible 2.6 "Heartbreaker" Release Notes - https://github.com/ansible/ansible/blob/v2.6.2/changelogs/CHANGELOG-v2.6.rst
# Ansible 2.5 "Kashmir" Release Notes - https://github.com/ansible/ansible/blob/stable-2.5/changelogs/CHANGELOG-v2.5.rst
# Command line tool from a Docker container
#####################################################
# Clone
git clone https://github.com/ernestgwilsonii/docker-ansible.git

# Build
docker build --no-cache -t ernestgwilsonii/ansible:2.6.2 .

# Test
docker run --rm ernestgwilsonii/ansible:2.6.2 ansible --version

# Login to Docker registry
docker login

# Upload to Docker registry
docker push ernestgwilsonii/ansible:2.6.2
################################################################################


################################################################################
# Run #
#######
# Setup an "ansible" alias for BASH
alias 'ansible=docker run --rm -v /opt/ansible:/etc/ansible ernestgwilsonii/ansible:2.6.2 ansible'

# Test
ansible --version


# Create local file for use later if a bash alias (above) is not lazy enough!
echo -en '#!/bin/bash\ndocker run --rm ernestgwilsonii/ansible:2.6.2 ansible "$@"' > /usr/local/bin/ansible && chmod +x /usr/local/bin/ansible
