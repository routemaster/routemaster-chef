include_recipe "kandan::repository"

local_directory = "/opt/kandan"
config = "
# What should be used for broadcasting messages to browser?
# valid options: Faye
:broadcaster:
    :name: "Faye"

    :per_page: 30

    :max_rooms: 10

    :public_site: false

    :avatar_url: http://gravatar.com/avatar/%{hash}?s=%{size}&d=%{fallback}
    :avatar_fallback: identicon

    :now_threshold: 3000
    :timestamp_refresh_interval: 2000
"

file "#{local_directory}/config/kandan_settings.yml" do
    action :create
    contents config
    mode "0600"
    user "kandan"
end
