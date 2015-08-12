#
# Cookbook Name:: df_eclipse_ee _ee
# Recipe:: default
#
# Copyright (c) 2015 Pete Carapetyan, All Rights Reserved.

directory node['df_eclipse_ee']['local_dir'] do 
    mode "0755"
    recursive true
    action :create 
end



remote_file node['df_eclipse_ee']['remote_file'] do 
    source node['df_eclipse_ee']['source']
    mode "0755" 
    action :create_if_missing
end

execute "unzip_file" do 
    cwd node['df_eclipse_ee']['local_dir']
    command "tar -xzvf " + node['df_eclipse_ee']['tar_name']
    action :run
end


template '/tmp/eclipse_attribute_values.txt' do
  source 'attribute_values.txt.erb'
  mode "0777"
end