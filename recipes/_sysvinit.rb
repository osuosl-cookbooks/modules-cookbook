link "/etc/init.d/modules-load" do
  to "/etc/init.d/kmod"
end

service "modules-load" do
  action [:enable, :start]
end

service "kmod" do
  action [:enable, :start]
end

template '/etc/modules-load.d/chef-default.conf' do
  source 'modules.conf.erb'
  mode '0644'
  owner 'root'
  group 'root'
  variables(
    :modules => node['modules']['default']['modules']
  )
  notifies :restart, 'service[kmod]', :immediately
  only_if { node['modules']['default']['modules'] }
end
