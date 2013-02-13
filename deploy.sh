#!/bin/sh -e

REMOTE_USER=ubuntu # Default for EC2
REMOTE_ADDRESS='54.235.111.3'
REMOTE="$REMOTE_USER@$REMOTE_ADDRESS"

# Copy over the cookbook
tar czf - . | ssh "$REMOTE" "mkdir -p chef && tar xzf - -C chef"

ssh "$REMOTE" sudo sh -e <<EOF
    # Install base dependencies
    aptitude update
    yes '' | aptitude install -y -q=9 chef
    aptitude install -y -q=9 ruby-dev build-essential git-core
    gem install berkshelf

    cd chef

    # Autoinstall dependent cookbooks with berks
    berks install

    # Run chef-solo
    chef-solo & >> chef.log

    cd -
EOF
