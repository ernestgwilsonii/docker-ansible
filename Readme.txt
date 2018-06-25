################################################################################
# ansible - 
# REF: 
# Command line tool from a Docker container
#####################################################
# Clone
git clone https://github.com/ernestgwilsonii/docker-ansible.git

# Build
docker build --no-cache -t ernestgwilsonii/ansible:2.5.5 .

# Test
docker run --rm ernestgwilsonii/ansible:2.5.5 ansible --version

# Login to Docker registry
docker login

# Upload to Docker registry
docker push ernestgwilsonii/ansible:2.5.5
################################################################################


################################################################################
# Run #
#######
# Setup an "ansible" alias for BASH
alias 'ansible=docker run --rm ernestgwilsonii/ansible:2.5.5 ansible'

# Test
ansible --version


