class homebrew::install {
  exec { 'install-homebrew':
    cwd       => '/usr/local',
    command   => "ruby -e \"$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)\"",
    creates   => '/usr/local/bin/brew',
    logoutput => on_failure,
    timeout   => 0,
  }
}
