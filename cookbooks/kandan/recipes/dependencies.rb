# https://github.com/kandanapp/kandan/blob/master/DEPLOY.md

deps = ["ruby1.9.1-dev", "libxslt-dev", "libxml2-dev", "libpq-dev",
        "libsqlite3-dev", "ruby-bundler"]

deps.each do |p|
    package p do
        action :install
    end
end
