name             "RouteMaster Server Configuration"
description      "The scripts we use to provision RouteMaster on EC2"
maintainer       "The RouteMaster Project"
maintainer_email "benjaminwoodruff@ufl.edu"
license          "GNU AGPL v3.0+"
long_description IO.read(File.join(File.dirname(__FILE__), "../../README.md"))
version          "0.0.1"
supports         "ubuntu"
supports         "debian"

# Dependencies
depends "sudo",    ">= 2.0.0"  # https://github.com/opscode-cookbooks/sudo
depends "zsh",     ">= 1.0.0"  # https://github.com/opscode-cookbooks/zsh
depends "maven",   ">= 0.14.0" # https://github.com/opscode-cookbooks/maven
depends "git",     ">= 2.2.0"  # https://github.com/opscode-cookbooks/git
depends "mongodb", ">= 0.12"   # https://github.com/edelight/chef-mongodb
