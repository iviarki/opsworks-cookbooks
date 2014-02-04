cron "bundle_command" do
  minute "1"
  hour "*"
  command "cd /srv/opscode-community-site/current && env RUBYLIB='/srv/opscode-community-site/current/lib' RAILS_ASSET_ID=`git rev-parse HEAD` bundle exec rake _report"
end
