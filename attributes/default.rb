#
# Cookbook Name:: rs-mysql
# Attribute:: server
#
# Copyright (C) 2014 RightScale, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# The server usage method. It should either be 'dedicated' or 'shared'. In a 'dedicated' server, all
# resources are dedicated to MySQL. In a 'shared' server, MySQL utilizes only half of the server resources.
#
default['rs-mysql']['server_usage'] = 'dedicated'

# The MySQL server's root password
default['rs-mysql']['server_root_password'] = nil

# The MySQL server's replication password
default['rs-mysql']['server_repl_password'] = nil

# The MySQL database application username
default['rs-mysql']['application_username'] = nil

# The MySQL database application password
default['rs-mysql']['application_password'] = nil

# The privileges given to the application user
default['rs-mysql']['application_user_privileges'] = [:select, :update, :insert]

# The name of MySQL database
default['rs-mysql']['application_database_name'] = nil

# MySQL bind network interface - 'private' or 'public'
default['rs-mysql']['bind_network_interface'] = 'private'

# Enable/Disable scheduling backups
default['rs-mysql']['schedule']['enable'] = false

# The hour for the backup schedule
default['rs-mysql']['schedule']['hour'] = nil

# The minute for the backup schedule
default['rs-mysql']['schedule']['minute'] = nil

# The mount point where the device will be mounted
default['rs-mysql']['device']['mount_point'] = '/mnt/storage'

# Nickname for the device
default['rs-mysql']['device']['nickname'] = 'data_storage'

# Size of the volume to be created
default['rs-mysql']['device']['volume_size'] = 10

# Number of volumes in the stripe
default['rs-mysql']['device']['count'] = 2

# I/O Operations Per Second value
default['rs-mysql']['device']['iops'] = nil

# The filesystem to be used on the device
default['rs-mysql']['device']['filesystem'] = 'ext4'

# Amount of time (in seconds) to wait for a volume to detach at decommission
default['rs-mysql']['device']['detach_timeout'] = 300

# Whether to destroy volume(s) on decommission
default['rs-mysql']['device']['destroy_on_decommission'] = false

# The additional options/flags to use for the `mkfs` command. If the whole device is formatted, the force (-F) flag
# can be used (on ext4 filesystem) to force the operation. This flag may vary based on the filesystem type.
default['rs-mysql']['device']['mkfs_options'] = '-F'

# The stripe size to use while creating LVM
default['rs-mysql']['device']['stripe_size'] = 512

# Backup lineage
default['rs-mysql']['backup']['lineage'] = nil

# Restore lineage
default['rs-mysql']['restore']['lineage'] = nil

# The timestamp to restore backup from a backup taken on or before the timestamp in the same lineage
default['rs-mysql']['restore']['timestamp'] = nil

# Maximum backups to keep
default['rs-mysql']['backup']['keep']['keep_last'] = 60

# Daily backups to keep
default['rs-mysql']['backup']['keep']['dailies'] = 14

# Weekly backups to keep (Keep weekly backups for 1.5 months)
default['rs-mysql']['backup']['keep']['weeklies'] = 6

# Monthly backups to keep
default['rs-mysql']['backup']['keep']['monthlies'] = 12

# Yearly backups to keep
default['rs-mysql']['backup']['keep']['yearlies'] = 2

# The fully-qualified domain name of the master database server
default['rs-mysql']['dns']['master_fqdn'] = nil

# The DNS user key to create/update DNS records
default['rs-mysql']['dns']['user_key'] = nil

# The DNS secret key to create/update DNS records
default['rs-mysql']['dns']['secret_key'] = nil
