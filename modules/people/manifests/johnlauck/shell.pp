class people::johnlauck::shell {
  include zsh
  include zshgitprompt
  include wget
  include screen
  include tmux

  package { "s3cmd":
    ensure => present,
  }

}
