class people::johnlauck::shell {
  include zsh
  include zshgitprompt
  include wget
  include screen
  include tmux
  include brewcask
  
  package { "s3cmd":
    ensure => present,
  }

}
