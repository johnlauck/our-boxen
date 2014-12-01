class people::johnlauck::dev {

  include imagemagick
  include hub
  include heroku
  include protobuf
  include docker

  package { "postgresql92":
    ensure => present,
  }
  
}
