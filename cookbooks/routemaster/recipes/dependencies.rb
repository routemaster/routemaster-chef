include_recipe "mongodb::10gen_repo"
include_recipe "mongodb"

service "mongodb" do
    action [:start, :enable]
end

package "maven" do
    action :install
end
