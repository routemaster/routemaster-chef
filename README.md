Routemaster (Server Scripts)
============================

![Logo](https://www.cise.ufl.edu/~woodruff/routemaster/logo_small.png)

We use these scripts to provision and configure our EC2 instance that runs
RouteMaster. Everything is managed with [Chef](http://www.opscode.com/chef/).

Our Current Instance
--------------------

Project members should be able to log into the development server to test their
code using their ssh keys:

    ssh yourusername@54.235.111.3

If you are unsure of what your username is, look in
`cookbooks/routemaster/recipes/user_accounts.rb`. If you would like to modify
something about the configuration of your account, submit an issue or pull
request.

Installing
----------

We should eventually get EC2 provisioning working with knife.

1.  Set up the VM on EC2 using the web interface or something
2.  When asked for "user data," give it the file in ec2/cloud.cfg
3.  Modify the top of `deploy.sh`, and then run it with `./deploy.sh`
4.  Incremental changes can be installed quicker with `./deploy.sh --update`

License
-------

This program is free software: you can redistribute it and/or modify it under
the terms of the GNU Affero General Public License as published by the Free
Software Foundation, either version 3 of the License, or (at your option) any
later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY
WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE. See the GNU Affero General Public License for more details.

You should have received a copy of the GNU Affero General Public License along
with this program. If not, see <http://www.gnu.org/licenses/>.
