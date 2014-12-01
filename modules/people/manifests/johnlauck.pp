class people::johnlauck {
  notify { 'class people::johnlauck declared': }

  include osx

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

  include people::johnlauck::applications
  include people::johnlauck::shell
}
