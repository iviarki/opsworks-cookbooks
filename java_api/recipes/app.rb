application = node[:opsworks][:applications][0][:slug_name]
user = node[:opsworks][:deploy_user][:user]
appdir = node[:deploy][application][:deploy_to]

Chef::Log.info "Deploying #{application} using ownlocal_deploy::default"

bash "compile and run jetty" do
   user "#{user}"
   group "#{user}"
   cwd "#{appdir}/#{application}"
   code %{
     sudo /usr/local/maven-3.1.1/bin/mvn clean
     sudo /usr/local/maven-3.1.1/bin/mvn compile
     sudo /usr/local/maven-3.1.1/bin/mvn jetty:run
   }
end 
