Chef::Log.info("Custom Log Entry: Retrieving file.txt")
remote_file "/tmp/file.txt" do
  source "https://s3.amazonaws.com/tomzynsk/file.txt"
  owner "opsnode_root"
  group "root"
  mode 0777
end
