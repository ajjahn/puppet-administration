class administration::key {
  
  ssh_authorized_key { "${administration::email}":
    key => $administration::public_key,
    type => "ssh-rsa",
    user => $administration::username,
    ensure => present,
    require => Class["administration::file"],
  }
  
}