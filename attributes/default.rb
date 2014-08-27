default['modules']['default'] = {}
Chef::Log.info node.platform + " " + node.platform_version
default['modules']['init'] = value_for_platform(
  'centos' => {
    '6.0' => 'upstart',
    '7.0.1406' => 'systemd'
  },
  'fedora' => {
    '20' => 'systemd'
  },
  'debian' => {
    '7.4' => 'sysvinit'
  },
  'default' => 'upstart')
default['modules']['packages'] = value_for_platform(
  'debian' => {
    '7.4' => ['kmod']
  },
  'ubuntu' => {
    'default' => ['kmod'],
    ['10.04', '12.04', '12.10'] => ['module-init-tools'],
  },

  'centos' => {
    '7.0' => ['module-init-tools'],
    '7.0.1406' => ['kmod']
  },
  'fedora' => {
    '20' => ['kmod']
  },
  'default' => []
)
