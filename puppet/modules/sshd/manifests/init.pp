class sshd{
    include sshd::config
    include sshd::service

    Class['sshd::config']
    -> Class['sshd::service']
}
