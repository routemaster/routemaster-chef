Routemaster (Server Scripts)
============================

![Logo](https://www.cise.ufl.edu/~woodruff/routemaster/logo_small.png)

We use these scripts to provision and configure our EC2 instance that runs
RouteMaster. Everything is managed with [Chef](http://www.opscode.com/chef/).

Installing
==========

We should eventually get EC2 provisioning working with knife.

1.  Set up the VM on EC2 using the web interface or something
2.  When asked for "user data," give it the file in ec2/cloud.cfg
3.  Modify the top of `deploy.sh`, and then run it with `./deploy.sh`
4.  Incremental changes can be installed quicker with `./deploy.sh --update`

