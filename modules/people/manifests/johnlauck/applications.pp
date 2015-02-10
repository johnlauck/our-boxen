class people::johnlauck::applications {
  class { 'iterm2::dev':
    version => '20141103'
  }
  include iterm2::dev
  include dropbox
  include chrome
  include onepassword
  #include onepassword::chrome
  include virtualbox

  class { 'vagrant':
    version => '1.7.2',
  }
  vagrant::plugin { 'vagrant-vmware-fusion':
    license => '/Users/johnl/vmware_fusion.lic',
  }
  include vagrant
  include caffeine
  include alfred
  include atom
  include omnifocus
  include textexpander
  include evernote
  include skitch
  include spotify
  include skype
  include github_for_mac
  include reggy
  include bartender
  include vlc
  include sourcetree
  include flux::beta
  include charles
  include rubymine
  include macvim
  include sublime_text_2
  include plex
  include rdio
  include fitbit
  include colloquy
  include chocolat
  include imageoptim
  include textmate::textmate2::beta
  include pathfinder
  include cyberduck
  include kaleidoscope
  include istatmenus
  # include utorrent #eula error https://github.com/nonsense/puppet-utorrent/issues/6
  # include kindle  # error
  # include airfoil  # error
  # include pivotalbooster
}
