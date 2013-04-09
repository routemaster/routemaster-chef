include_recipe "kandan::user"
include_recipe "kandan::dependencies"
include_recipe "kandan::repository"
include_recipe "kandan::database"
include_recipe "kandan::config"

exec "bundle exec rake db:create db:migrate kandan:bootstrap" do
    cwd "/opt/kandan"
    user "kandan"
end

exec "bundle exec thin start" do
    cwd "/opt/kandan"
    user "kandan"
end
