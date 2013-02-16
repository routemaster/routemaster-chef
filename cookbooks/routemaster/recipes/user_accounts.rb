# Define each user and manage their keys and permissions

include_recipe "user"
node.default["authorization"]["sudo"]["include_sudoers_d"] = true
include_recipe "sudo"

# Do this first to minimize the chance of something else failing and locking us
# out.
sudo "ubuntu" do
    user "ubuntu"
    nopasswd true
end

user_account "pipeep" do
    shell "/usr/bin/zsh"
    supports :manage_home => true
    ssh_keys [
        # Laptop SSH key
        "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCdUT/zFvA0+ZU6Psv4u7F7a/mAkv3fa"\
        "R+PAJTgE/CtF4zg7YULZ1BYYsovxKWqxzJzvAA+QDtjta8oaiopCfhWinsONXfGVerin/"\
        "wYfhpOFKPAp/ZNjFbaabHfvf0VYDBFmDgG6tcewhxwjz5sLbKhhejx7Px1+dRYOSdkP35"\
        "4qQc4jPqhuuF1FBgKZJCE0PQk7T2wBTPKcENtwNqyeu2m6SeDwJRFbSPi6l6QBcld0GTl"\
        "Nne1CYrUAZZHvm8QMQqsZEvTwfqZOTO6f5/MirtHC1BWb3N2rvCXkjJHWwHQ30USzFEPQ"\
        "fMgoHx4oMWRyrj95rQkzZMTXw6n1VqBGqO7 odetopi.e@gmail.com",
        # Netbook SSH key
        "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDlXbH9NBRHojAnOBRK8wntX+Mk0pgdR"\
        "4TusSgh8Zmns1jPU7p+ZAceOsU40l3pETPZlzDMJlTLhBfloFgtUk3fBGuFmYdcLz+fAv"\
        "qEgeGA9jB2FzinSmtJBD01EaXUAhqZUt62SnGBpr3YAiHGSr8KZPhYpgGIgH0ehDZVU55"\
        "WwtecBghhJUy7GoOEneQFryyEH8wzK3U31kCn6WL0coDA+uDQfslXscCfvfsvqCtY5pil"\
        "OPeB0vSmXG12BZYeNZSYEAWI2NEpOqFXioC1oqUjbBRvs2Ft+jNiPtlq3ydFqSrXfRFe+"\
        "5Crv4kBvN3VKcProNDkELjLvaGhq9rC1VR7 benjaminwoodruff@ufl.edu"
    ]
end

package "zsh" do
    action :install
end

user_account "kalgynirae" do
    shell "/bin/bash"
    supports :manage_home => true
    ssh_keys [
        "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC+qwTkrg5wHWZ042ntl9EtlsFIskvrv"\
        "37uGtrlHVZgVoEZj21csErtc3sOu/PgtwU0qXVktm76xmyTbIjyn/g4B1/JktbsleQ5p5"\
        "v/SRW2+P+3Bd0DG6MEHLOHR9nwPATym40dgdZ3H2Eb0qDx2l7P0bKpMlLEDAoDeXZ6+cE"\
        "eC+LXvlxpM9Q+chI4T1YVRZAzCyMuHyMvDJgPfCHw4aMpTMI1ZKGhcKAg8Kqlgwa6pauC"\
        "2L5Wf2zgLSCPmxvCaTW3MbTciMOB31oSplrd7r/rGccr/xxdsLxfwrMxjJNTjH5LJYDxs"\
        "KajwVsRwZuI6H/d3DxmMLa5L1J3eFn1dfuT colinchan@lumeh.org"
    ]
end

group "wheel" do
    members ["ubuntu", "pipeep", "kalgynirae"]
end

sudo "wheel" do
    group "%wheel"
    nopasswd true
end
