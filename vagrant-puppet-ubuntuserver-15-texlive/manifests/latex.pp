exec { "apt-update":
  command => "/usr/bin/apt-get update"
}

package { ["texlive-full"]:
  ensure  => installed,
  require => Exec["apt-update"]
}