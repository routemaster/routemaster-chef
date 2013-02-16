#!/bin/sh -e
# Given a remote Ubuntu or Debian server, installs RouteMaster
# Use this after `provision.sh`

REMOTE_USER=ubuntu # Default for EC2
REMOTE_ADDRESS='54.235.111.3'
REMOTE="$REMOTE_USER@$REMOTE_ADDRESS"
TARGET_PATH="/var/chef"

# Copy over the cookbook
tar czf - . | ssh "$REMOTE" "sudo sh -c ' \
    rm -rf $TARGET_PATH && \
    mkdir -p $TARGET_PATH && \
    tar xzf - -C $TARGET_PATH \
'"

ssh "$REMOTE" sudo sh -e <<EOF
    if [ "$1" != "--update" ]; then
        # Install base dependencies
        aptitude update
        aptitude install -y -q=9 ruby1.9.1 rubygems1.9.1 ruby1.9.1-dev \
                                 build-essential git-core
        gem1.9.1 install chef
        gem1.9.1 install berkshelf
    fi

    cd "$TARGET_PATH"

    # Autoinstall dependent cookbooks with berks
    berks install --path cookbooks

    mkdir -p /etc/chef
    mv solo.rb /etc/chef/solo.rb
    # Run chef-solo
    chef-solo -j solo.json & >> chef.log

    cd -
EOF
