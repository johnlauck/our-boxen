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

  # $home = "/Users/${::boxen_user}"
  # $dotfiles_dir = "${boxen::config::srcdir}/dotfiles"
  #
  # repository { $dotfiles_dir:
  #   source => "${::github_user}/dotfiles"
  # }
  #
  # exec { "install dotfiles":
  #   cwd      => $dotfiles_dir,
  #   command  => "./install.sh",
  #   provider => shell,
  #   creates  => "${home}/.zshrc",
  #   require  => Repository[$dotfiles_dir]
  # }

  include people::johnlauck::applications
  include people::johnlauck::dev
  include people::johnlauck::shell
}
