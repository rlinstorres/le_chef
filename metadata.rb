name              'logentries_agent'
maintainer        'Logentries'
maintainer_email  'support@logentries.com'
license           'Apache v2.0'
description       'Installs and configures the logentries agent'
long_description  'Installs the Logentries python agent and configures it to follow logs specified in a JSON object'
recipe            'logentries_agent::default', 'Downloads the agent and sets up logging'
recipe            'logentries_agent::install', 'Download and install the agent from le repo'
recipe            'logentries_agent::configure', 'Register and le start agent, follow files'
version           '0.2.7'
chef_version      '>= 12.1' if respond_to?(:chef_version)
source_url        'https://github.com/logentries/le_chef' if respond_to?(:source_url)
issues_url        'https://github.com/logentries/le_chef/issues' if respond_to?(:issues_url)
supports          'ubuntu'
supports          'debian'
supports          'centos'
supports          'amazon'
supports          'redhat'
license           'Proprietary - All Rights Reserved'

depends 'apt'
depends 'yum'
