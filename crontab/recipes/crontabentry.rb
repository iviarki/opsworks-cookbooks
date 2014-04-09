Chef::Log.info("Custom Log Entry: Adding random_cron_job to Crontab")
cron "random_cron_job" do
  minute "*/10"
  command "echo 'Count' >> /tmp/count.log"
end

