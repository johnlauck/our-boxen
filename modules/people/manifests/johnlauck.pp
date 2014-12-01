class people::johnlauck {
  notify { 'class people::johnlauck declared': }

  include osx::finder::empty_trash_securely
  include osx::global::tap_to_click
  include osx::safari::enable_developer_mode
  include osx::keyboard::capslock_to_control

  include osx::universal_access::ctrl_mod_zoom

  class { 'osx::mouse::smart_zoom':
    enabled => true
  }

  include osx::dock::autohide
  include osx::dock::disable_dashboard

  class { 'osx::dock::magnification':
    magnification => true,
    magnification_size => 84
  }

  # $dotfiles = "${boxen::config::srcdir}/dotfiles"
  #
  # repository { $dotfiles:
  #   source => "${::github_login}/dotfiles",
  #   require => File[${boxen::config::srcdir}],
  # }
  #
  # exec { "install dotfiles":
  #   provider => shell,
  #   command  => "./script/install",
  #   cwd      => $dotfiles,
  #   creates  => "${home}/.zshrc",
  #   require  => Repository[$dotfiles],
  # }

  include people::johnlauck::applications
  include people::johnlauck::dev
  include people::johnlauck::shell
}
