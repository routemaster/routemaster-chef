# Define each user

sudo "ubuntu" do
    name "ubuntu"
    nopasswd true
end

account "pipeep" do
    shell "/usr/bin/zsh"
    supports :manage_home => true
    ssh_keys [
        "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCdUT/zFvA0+ZU6Psv4u7F7a/mAkv3faR+PAJTgE/CtF4zg7YULZ1BYYsovxKWqxzJzvAA+QDtjta8oaiopCfhWinsONXfGVerin/wYfhpOFKPAp/ZNjFbaabHfvf0VYDBFmDgG6tcewhxwjz5sLbKhhejx7Px1+dRYOSdkP354qQc4jPqhuuF1FBgKZJCE0PQk7T2wBTPKcENtwNqyeu2m6SeDwJRFbSPi6l6QBcld0GTlNne1CYrUAZZHvm8QMQqsZEvTwfqZOTO6f5/MirtHC1BWb3N2rvCXkjJHWwHQ30USzFEPQfMgoHx4oMWRyrj95rQkzZMTXw6n1VqBGqO7 odetopi.e@gmail.com",
        "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDlXbH9NBRHojAnOBRK8wntX+Mk0pgdR4TusSgh8Zmns1jPU7p+ZAceOsU40l3pETPZlzDMJlTLhBfloFgtUk3fBGuFmYdcLz+fAvqEgeGA9jB2FzinSmtJBD01EaXUAhqZUt62SnGBpr3YAiHGSr8KZPhYpgGIgH0ehDZVU55WwtecBghhJUy7GoOEneQFryyEH8wzK3U31kCn6WL0coDA+uDQfslXscCfvfsvqCtY5pilOPeB0vSmXG12BZYeNZSYEAWI2NEpOqFXioC1oqUjbBRvs2Ft+jNiPtlq3ydFqSrXfRFe+5Crv4kBvN3VKcProNDkELjLvaGhq9rC1VR7 benjaminwoodruff@ufl.edu"
    ]
end

sudo "pipeep" do
    user "pipeep"
    nopasswd true
end

account "kalgynirae" do
    shell "/bin/bash"
    supports :manage_home => true
end
