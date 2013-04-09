include_recipe "kandan::dependencies"
include_recipe "kandan::user"

local_directory = "/opt/kandan"

deploy local_directory do
    repo "git://github.com/kandanapp/kandan.git"
    revision "v1.1"
    user "kandan"
end

exec "env bundle install" do
    cwd local_directory
    user "kandan"
end
