class uboate::packages{
    $packages = ['lxc','mysql','openssh','wget']
    
    package { '${packages[0]}':
        ensure => installed,
    }
    
    package { '${packages[1]}':
        ensure => installed,
    }
    
    package { '${packages[2]}':
        ensure => installed,
    }
    
    package { '${packages[3]}':
        ensure => installed,
    }
    
    exec { 'docker':
        command => "wget -qO- https://get.docker.com/ | sh",
        depends_on => 'wget',
    }
}