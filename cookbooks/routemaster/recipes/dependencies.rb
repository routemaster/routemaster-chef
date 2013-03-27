include_recipe "mongodb::10gen_repo"
include_recipe "mongodb"

package "openjdk-7-jdk" do
    action :install
end

service "mongodb" do
    action [:start, :enable]
end

package "maven" do
    action :install
end
