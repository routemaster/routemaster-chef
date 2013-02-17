Routemaster (Server Scripts)
============================

![Logo](https://www.cise.ufl.edu/~woodruff/routemaster/logo_small.png)

We use these scripts to provision and configure our EC2 instance that runs
RouteMaster. Everything is managed with [Chef](http://www.opscode.com/chef/).

Our Current Instance
====================

Project members should be able to log into the development server to test their
code using their ssh keys:

    ssh yourusername@54.235.111.3

If you are unsure of what your username is, look in
`cookbooks/routemaster/recipes/user_accounts.rb`. If you would like to modify
something about the configuration of your account, submit an issue or pull
request.

Installing
==========

We should eventually get EC2 provisioning working with knife.

1.  Set up the VM on EC2 using the web interface or something
2.  When asked for "user data," give it the file in ec2/cloud.cfg
3.  Modify the top of `deploy.sh`, and then run it with `./deploy.sh`
4.  Incremental changes can be installed quicker with `./deploy.sh --update`

