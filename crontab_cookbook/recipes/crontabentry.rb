cron "bundle_command" do
  minute "*/3"
  hour "*"
  command "/bin/bash -l -c 'cd / && RAILS_ENV=staging /usr/local/bin/bundle exec rake every_three_minute_tasks --silent >> /var/log/whenever.log 2>&1"
end
