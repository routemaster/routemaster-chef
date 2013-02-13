#!/bin/sh -e

REMOTE_USER=ubuntu # Default for EC2
REMOTE_ADDRESS='54.235.111.3'
REMOTE="$REMOTE_USER@$REMOTE_ADDRESS"

# Copy over the cookbook
tar czf - . | \
    ssh "$REMOTE" "sudo rm -rf chef && mkdir -p chef && tar xzf - -C chef"

ssh "$REMOTE" sudo sh -e <<EOF
    if [ "$1" != "--update" ]; then
        # Install base dependencies
        aptitude update
        yes '' | aptitude install -y -q=9 chef
        aptitude install -y -q=9 ruby-dev build-essential git-core
        gem install berkshelf
    fi

    cd chef

    # Autoinstall dependent cookbooks with berks
    berks install --path cookbooks

    # Run chef-solo
    chef-solo -c solo.rb -j solo.json & >> chef.log

    cd -
EOF
