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

package "zsh" do
    action :install
end

user_account "pipeep" do # Benjamin Woodruff
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

user_account "kalgynirae" do # Colin Chan
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

user_account "lefrizzell" do # Lauren Frizzell
    shell "/bin/bash"
    supports :manage_home => true
    ssh_keys [
        "ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEA5M+q4gpXnrk8ro0vSLby/2IPo6Zrc/4mL"\
        "3KrcuGLzL5VVxOK0YaBE/bAVN9YJVbSljHSTbM0d3y4T8/OXqYEO7Phqsegk05stmeCjZ"\
        "1yq3HKwR6lpyPG5cYy4rA/NCJxBjKAzTIl/ClYa9ureU2tvAXapyu6YUiTtnk04LMrDcJ"\
        "3CXASlqBnNT01ue/EPmPmKnwYF+cDBsz0gy47Q2tIq44gwutK6E/VN3lVi7w3VDy2p7F0"\
        "eb8fDay2lwjVko5KoypSAeAWG1o8bZfl8Ww+ew/3oElNJ4M+BBX3l6qNh3aRto56E/ypU"\
        "fqU/z22U4W8kiGxAUDB7uxnOLLtDuj4lQ== lefrizzell@gmail.com"
    ]
end

user_account "smishra2" do # Sachit Mishra
    shell "/bin/bash"
    supports :manage_home => true
    ssh_keys [
        "ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAIEArMU+BcFf2vnWOBdw0fpWoBhW3kKx9BE9Y"\
        "4VrBJ6z+KDp8zP5HxPrARPljIVoprJ2iQBZO9k8lwt8/pZYnSzmk2yaTKjg1y0vlum1bB"\
        "utC2sdIltEKFi2NSX6hjdEsxK5jueeU7iNjC0VpLuHavEOcTKZMzekdsewe8VjSpMFzI0="
    ]
end

user_account "primasecunda" do # Michael Retherford
    shell "/bin/bash"
    supports :manage_home => true
    ssh_keys [
        "ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEArMF9T4fzfrixcBfjUfpdy5xz5fzZKB7GO"\
        "XrHBzBoHp4FuOHS5jUED6vJConB/v2NpxxYl5g6kyZx42rkpv1WaFi7oHLYPYJKlhaon+"\
        "DRrgcT3msqiQREQd4YMMtaul10pNuDb8L0NrMrpnZONMxAv5H0mHjoTTeMAo2ip91BWC6"\
        "Zd3OHU/0AL4PnlDR2oTc1SBr9YP/p6aR1c8MWcLI2/A7xPmG/kLzU5wxCSPkH5k+GmgqS"\
        "i4ob/P1iPJSqwgAlheLNJ1azFs68ylF3lPlXgsdDSDQNjj0II97YJ6CyVH1YUKbm+8ESc"\
        "w8oa+C0126ruM/015Ko7ym5mf57dRSSCQ== primasecunda@gmail.com"
    ]
end

user_account "sternjosh" do # Joshua Bush
    shell "/bin/bash"
    supports :manage_home => true
    # I still need your ssh public-key, I only have your key signature
end

user_account "ohhhgreat" do # Brandon Hurst
    shell "/bin/bash"
    supports :manage_home => true
    ssh_keys [
        "ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAzq5nx8dcqeanoCr1EZnHxeOdu9ahxToVT"\
        "tXgs4v8pDD+0uHBmkm2PkzNBEZ0XB7F1gjpz4Qjt+c3NBENJu7gNOthYmdgYqP2xd3ANH"\
        "mCNbJYc6hlRUq+DPTQOOXkiz5OMp17RjEOSPxATiiaOjMx/BofE82ri+WDD8twcD+bLt6"\
        "1XzYZPU4bUMYCIQB9ymfRNm3zTP/Cyu6cJPTLI2m7I6lyZU9M/YRDcY1Pko4DAllnFDmJ"\
        "bsUsrI5ySlqAkp130UXVcTaircNovJZBdLH/+syGxKfnDzXZMSZSxaQ0mC24CpkpVCs0F"\
        "sxaRmvL9o4kKX+SIHK9HGhrmLQhVG5uPw== Brandon@BRANDON-HP"
    ]
end

group "wheel" do
    # Ask Benjamin if you want sudoer permissions. I'm doing this per-request to
    # keep people from accidentally shooting themselves in the foot.
    members ["ubuntu", "pipeep", "kalgynirae"]
end

sudo "wheel" do
    group "%wheel"
    nopasswd true
end
