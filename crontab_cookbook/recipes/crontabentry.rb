execute "prepend_path" do
  command "export PATH=/usr/local/bin:$PATH"
end
cron "bundle_command" do
  minute "*/3"
  command "/bin/bash -l -c 'which ruby >> /var/log/whenever.log 2>&1 && which bundle >> /var/log/whenever.log"
end

