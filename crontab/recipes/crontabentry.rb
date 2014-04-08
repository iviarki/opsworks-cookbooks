Chef::Log.info("Adding random_cron_job to Crontab")
cron "random_cron_job" do
  minute "*/10"
  command "echo 'Count/n' >> /tmp/count.log"
end

