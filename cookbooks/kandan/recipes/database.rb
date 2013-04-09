include_recipe "kandan::repository"

local_directory = "/opt/kandan"
config = "
production:
    adapter: sqlite3 # We should be using postgres or something, but I'm lazy
    database: db/kandan_production.sqlite3
    pool: 5
    timeout: 5000
"

file "#{local_directory}/config/database.yml" do
    action :create
    contents config
    mode "0600"
    user "kandan"
end
