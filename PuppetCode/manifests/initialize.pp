class uboate::initialize{
    case $os {
        'ubuntu','debian': {
            package { 'apache2':
                ensure => 'present',
                }
            }
        'centos','redhat':{
            package { 'httpd':
                ensure => 'present',
                }
            }
        }
    }
}