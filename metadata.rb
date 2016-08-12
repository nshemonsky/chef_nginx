name              'chef_nginx'
maintainer        'Chef Software, Inc.'
maintainer_email  'cookbooks@chef.io'
license           'Apache 2.0'
description       'Installs and configures nginx'
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '2.9.0'

recipe 'chef_nginx',         'Installs nginx package and sets up configuration with Debian apache style with sites-enabled/sites-available'
recipe 'chef_nginx::source', 'Installs nginx from source and sets up configuration with Debian apache style with sites-enabled/sites-available'

depends 'apt'
depends 'bluepill'
depends 'build-essential'
depends 'ohai', '< 4.0'
depends 'runit', '>= 1.6.0'
depends 'yum'
depends 'yum-epel'
depends 'zypper'

supports 'amazon'
supports 'centos'
supports 'debian'
supports 'fedora'
supports 'oracle'
supports 'redhat'
supports 'scientific'
supports 'ubuntu'
supports 'suse'

source_url 'https://github.com/chef-cookbooks/nginx' if respond_to?(:source_url)
issues_url 'https://github.com/chef-cookbooks/nginx/issues' if respond_to?(:issues_url)

chef_version '>= 11' if respond_to?(:chef_version)
