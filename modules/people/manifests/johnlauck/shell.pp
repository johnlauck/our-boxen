class people::johnlauck::shell {

  include zsh
  include ohmyzsh
  include wget
  include screen
  include tmux
  include brewcask

  package { "s3cmd":
    ensure => present,
  }

  package { "htop":
    ensure => present,
  }

}
