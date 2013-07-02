class administration::group {
  
  group { $administration::username:
    gid => $administration::uid,
    ensure => present,
  }
  
  group { $administration::groups:
    ensure => present
  }
  
}