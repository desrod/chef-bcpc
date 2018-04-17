###########################################
#
#  Keystone Settings
#
###########################################
#
# Default log file
default['bcpc']['keystone']['log_file'] = '/var/log/keystone/keystone.log'
# Turn caching via memcached on or off.
default['bcpc']['keystone']['enable_caching'] = true
# Enable debug logging (also caching debug logging).
default['bcpc']['keystone']['debug'] = false
# Enable verbose logging.
default['bcpc']['keystone']['verbose'] = false
# Set the timeout for how long we will wait for Keystone to become operational
# before failing (configures timeout on the wait-for-keystone-to-be-operational
# spinlock guard).
default['bcpc']['keystone']['wait_for_keystone_timeout'] = 120
# Set the number of Keystone WSGI processes and threads to use by default on the
# public API (experimentally threads > 1 may cause problems with the service
# catalog, for now we recommend scaling only in the processes dimension)
default['bcpc']['keystone']['wsgi']['processes'] = 5
default['bcpc']['keystone']['wsgi']['threads'] = 1
# The driver section below allows either 'sql' or 'ldap' (or 'templated' for catalog)
# Note that not all drivers may support SQL/LDAP, only tinker if you know what you're getting into
default['bcpc']['keystone']['drivers']['assignment'] = 'sql'
default['bcpc']['keystone']['drivers']['catalog'] = 'sql'
default['bcpc']['keystone']['drivers']['credential'] = 'sql'
default['bcpc']['keystone']['drivers']['domain_config'] = 'sql'
default['bcpc']['keystone']['drivers']['endpoint_filter'] = 'sql'
default['bcpc']['keystone']['drivers']['endpoint_policy'] = 'sql'
default['bcpc']['keystone']['drivers']['federation'] = 'sql'
default['bcpc']['keystone']['drivers']['identity'] = 'sql'
default['bcpc']['keystone']['drivers']['identity_mapping'] = 'sql'
default['bcpc']['keystone']['drivers']['oauth1'] = 'sql'
default['bcpc']['keystone']['drivers']['policy'] = 'sql'
default['bcpc']['keystone']['drivers']['revoke'] = 'sql'
default['bcpc']['keystone']['drivers']['role'] = 'sql'
default['bcpc']['keystone']['drivers']['token'] = 'memcache_pool'
default['bcpc']['keystone']['drivers']['trust'] = 'sql'
# Notifications driver
default['bcpc']['keystone']['drivers']['notification'] = 'log'
# token format
default['bcpc']['keystone']['providers']['token'] = 'fernet'
# enable automatic key rotation for Fernet tokens
# (recommended but just in case you want it off)
default['bcpc']['keystone']['rotate_fernet_tokens'] = true
# rotate Fernet tokens after they reach this age (if enabled)
default['bcpc']['keystone']['fernet_token_max_age_seconds'] = 7*24*60*60
# Notifications format. See: http://docs.openstack.org/developer/keystone/event_notifications.html
default['bcpc']['keystone']['notification_format'] = 'cadf'

# Identity configuration
default['bcpc']['keystone']['admin_tenant'] = "AdminTenant"
default['bcpc']['keystone']['admin_role'] = "Admin"
default['bcpc']['keystone']['admin_username'] = "admin"
default['bcpc']['keystone']['member_role'] = "Member"
default['bcpc']['keystone']['admin_email'] = "admin@localhost.com"
default['bcpc']['keystone']['service_project']['name'] = 'service'
default['bcpc']['keystone']['service_project']['domain'] = 'default'

default['bcpc']['keystone']['default_domain'] = 'default'

# LDAP credentials used by Keystone
default['bcpc']['ldap']['admin_user'] = nil
default['bcpc']['ldap']['admin_pass'] = nil
default['bcpc']['ldap']['config'] = {}
