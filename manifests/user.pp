class administration::user {

  user { $administration::username:
    comment => "$administration::email",
    home => "/home/$administration::username",
    shell => "/bin/bash",
    uid => $administration::uid,
    gid => $administration::uid,
    groups => $administration::groups,
    password => '',
    ensure => present,
    require => Class["administration::group"],
  }
  
  class { 'sudo': }
  sudo::conf { 'admins':
    priority => 10,
    content  => "%wheel ALL=(ALL) NOPASSWD: ALL\n",
  }

  user {'root':
    password => '!'
  }

}
