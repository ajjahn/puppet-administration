class administration::file {
  
  file { "authorized_keys":
    path => "/home/$administration::username/.ssh/authorized_keys",
    ensure => file,
    owner => $administration::username,
    group => $administration::username,
    mode => 600,
    require => Class["administration::directory"]
  }
  
  file { "bash_profile":
    path => "/home/${administration::username}/.bash_profile",
    ensure => file,
    owner => $administration::username,
    group => $administration::username,
    mode => 600,
    source => "puppet:///modules/${module_name}/bash_profile",
    require => Class["administration::directory"]
  }
  
  file { "bashrc":
    path => "/home/${administration::username}/.bashrc",
    ensure => file,
    owner => $administration::username,
    group => $administration::username,
    mode => 600,
    source => "puppet:///modules/${module_name}/bashrc",
    require => Class["administration::directory"]
  }
  
}