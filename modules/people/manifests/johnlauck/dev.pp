class people::johnlauck::dev {

  include imagemagick
  include hub
  include heroku
  include protobuf
  include docker
  
  include phantomjs::1_9_0
  phantomjs::global { '1.9.0': }
}
