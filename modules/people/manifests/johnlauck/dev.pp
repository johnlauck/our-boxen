class people::johnlauck::dev {

  include imagemagick
  include hub
  include heroku
  include protobuf
  include docker
  include java
  include inconsolata

  # how do I pip install boto ?

  package { "postgresql92":
    ensure => present,
  }

  package { "ansible":
    ensure => present,
  }

  package { "gnuplot":
    ensure => present,
  }

  package { "libxml2":
    ensure => present,
  }

  package { "v8":
    ensure => present,
  }

  package { "aws-elasticbeanstalk":
    ensure => present,
  }

  # http://support.apple.com/kb/DL1572
  package { 'JavaOsx':
    source  => 'http://support.apple.com/downloads/DL1572/en_US/JavaForOSX2014-001.dmg',
    provider => pkgdmg,
    ensure => present,
    #ensure   => installed,
  }

  ruby_gem { 'bundler for all rubies':
    gem          => 'bundler',
    version      => '~> 1.0',
    ruby_version => '*',
  }


}
