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

  user {'root':
    password => '!'
  }

}
