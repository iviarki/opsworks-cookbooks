include_recipe "route53"

route53_record "create a record" do
  name  "test"
  value "1.2.3.4"
  type  "A"
  zone_id               node[:route53][:zone_id]
  aws_access_key_id     node[:route53][:aws_access_key_id]
  aws_secret_access_key node[:route53][:aws_secret_access_key]
  overwrite true
  action :create
end
