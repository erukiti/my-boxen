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

  class { 'intellij':
  	edition => 'ultimate',
  }

  mou::preferences { 'Mou':
  	theme => 'Solarized (Dark)+',
  	css => 'GitHub2'
	}

#  sublime_text_2::package { 'Emmet':
#    
#  }
}
