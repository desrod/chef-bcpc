###########################################
#
#  Cinder Settings
#
###########################################
# Verbose logging (level INFO)
default['bcpc']['cinder']['verbose'] = false
default['bcpc']['cinder']['debug'] = false
default['bcpc']['cinder']['workers'] = 5
default['bcpc']['cinder']['allow_az_fallback'] = true
default['bcpc']['cinder']['rbd_flatten_volume_from_snapshot'] = true
default['bcpc']['cinder']['rbd_max_clone_depth'] = 5
default['bcpc']['cinder']['database']['max_overflow'] = 10
default['bcpc']['cinder']['database']['max_pool_size'] = 5
default['bcpc']['cinder']['quota'] = {
  "volumes" => -1,
  "snapshots" => 10,
  "gigabytes" => 1000
}

# Identity
default['bcpc']['cinder']['user'] = 'cinder'
