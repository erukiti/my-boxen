class people::erukiti {
	include mongodb
	include mou
	include mou::themes
	include onepassword
	include sourcetree
	include sublime_text_2
  include tunnelblick
  include chrome
  include dropbox
  include java
  include vlc
  include virtualbox
  include skype

  class { 'intellij':
  	edition => 'ultimate',
  }

  mou::preferences { 'Mou':
  	theme => 'Solarized (Dark)+',
  	css => 'GitHub2'
	}

  package {
    [
      'tmux',
      'htop',
      'play',
      'scala',
      'sbt',
      'phantomjs',
      'jq',
      'wget',
    ]:
  }

#  sublime_text_2::package { 'Emmet':
#    
#  }
}
