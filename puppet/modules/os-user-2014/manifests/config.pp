class os-user-2014::config{
    user { 'demouser':
        ensure => present,
        gid => 'developer',
        comment => 'demouser',
        home => '/home/demouser',
        password => '$6$Jd81juZS8L/wM23S$TRBDzzdwlNgAA5e8gtFKjj0UmoGkjSA3xYUtDkPlrInWYduxavqW1ckXhJTOigRxiNxXFrX9ZdljcGOoBWk7p0',
        managehome => true,
        shell => '/bin/bash',
    }

    file { '/home/demouser/.ssh':
        ensure => directory,
        owner => 'demouser',
        group => 'developer',
        mode => '0700',
        require => User["demouser"]
    }

    exec { "demouser chmod" :
        user => 'root',
        path => ['/bin'],
        command => "chmod 755 /home/demouser",
        timeout => 999,
        require => User["demouser"]
    }

}
