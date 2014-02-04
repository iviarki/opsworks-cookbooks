cron "bundle_command" do
  minute "*/3"
  hour "*"
  command "cd /srv/opscode-community-site/current &&
    env RUBYLIB='/srv/opscode-community-site/current/lib'
    RAILS_ASSET_ID=`git rev-parse HEAD`
    bundle exec rake _report"
  action :create
end
