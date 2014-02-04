cron "bundle_command" do
  action node.tags.include?('bundle-command') :create
  minute "*/3"
  hour "*"
  weekday "*"
  user "root"
  mailto "iviarki@gmail.com"
  home "/root"
  command %Q{
    cd /srv/opscode-community-site/current &&
    env RUBYLIB="/srv/opscode-community-site/current/lib"
    RAILS_ASSET_ID=`git rev-parse HEAD`
    bundle exec rake _report
  }
end
