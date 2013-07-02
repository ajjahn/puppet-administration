class administration::directory {
  
  file { "home_dir":
    path => "/home/$administration::username",
    ensure => directory,
    owner => $administration::username,
    group => $administration::username,
    mode => 755,
    require => [Class["administration::user"], Class["administration::group"]]
  }
  
  file { "ssh_dir":
    path => "/home/$administration::username/.ssh",
    ensure => directory,
    owner => $administration::username,
    group => $administration::username,
    mode => 700,
    require => [File["/home/$administration::username"]]
  }
  
}