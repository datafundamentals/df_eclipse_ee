#deconstructing the download from it's component parts
#http://docs.datafundamentals.com/lib/eclipse-jee-mars-R-linux-gtk-x86_64.tar.gz
default['df_eclipse_ee']['version'] = "mars-R-linux-gtk-x86_64"
default['df_eclipse_ee']['web_lib_source'] = "http://docs.datafundamentals.com/lib/"
default['df_eclipse_ee']['name'] = "eclipse-jee-" + node['df_eclipse_ee']['version']
default['df_eclipse_ee']['tar_name'] = node['df_eclipse_ee']['name'] + ".tar.gz"
default['df_eclipse_ee']['source'] = node['df_eclipse_ee']['web_lib_source'] + node['df_eclipse_ee']['tar_name']  
default['df_eclipse_ee']['local_dir'] = "/usr/local/eclipse/"
default['df_eclipse_ee']['remote_file'] = node['df_eclipse_ee']['local_dir']  + node['df_eclipse_ee']['tar_name']   

