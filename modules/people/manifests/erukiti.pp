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
  include vagrant
  include mysql 
  include qt
#  include nvm

  class { 'intellij':
  	edition => 'ultimate',
  }

  class
  {
      'nodejs::global': version => 'v0.10'
  }
  # 以下、npm で管理すべきものを追加していく
  nodejs::module { 'bower': node_version => 'v0.10' }
  nodejs::module { 'grunt': node_version => 'v0.10' }

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
      'maven',
      'xz',
      'fuse4x-kext',
      'sshfs',
      'tree',
      'packer'
    ]:
  }

#  sublime_text_2::package { 'Emmet':
#    
#  }
}
