class people::johnlauck::dev {

  include imagemagick
  include hub
  include heroku
  include protobuf
  include docker
  include java

  package { "postgresql92":
    ensure => present,
  }

  # http://support.apple.com/kb/DL1572
  package { 'JavaOsx':
    source  => 'http://support.apple.com/downloads/DL1572/en_US/JavaForOSX2014-001.dmg',
    provider => pkgdmg;
  }

}
