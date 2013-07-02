class administration::file {
  
  file { "authorized_keys":
    path => "/home/$administration::username/.ssh/authorized_keys",
    ensure => file,
    owner => $administration::username,
    group => $administration::username,
    mode => 600,
    require => Class["administration::directory"]
  }
  
}