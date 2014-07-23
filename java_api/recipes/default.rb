#
## Cookbook Name:: java_api
## Recipe:: default
##
## Copyright (C) 2014 YOUR_NAME
##
## All rights reserved - Do Not Redistribute
##
%w{ build-essential zlib curl git maven java_api }.each do |cb|
  include_recipe cb
end
