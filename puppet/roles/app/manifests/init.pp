class app {
    include app::localtime
    include app::lang
    include app::base
    include app::os-user-2014
    include app::os-group
    include app::sshd
    include app::iptables
    include app::php

    Class['app::os-group'] 
    ~> Class['app::os-user-2014']
}
