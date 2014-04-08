Chef::Log.info("Retrieving file.txt")
remote_file "/tmp/file.txt" do
  source "https://s3.amazonaws.com/tomzynsk/file.txt"
  owner "opsnode_root"
  group "opsnode_root"
  mode 0777
end
