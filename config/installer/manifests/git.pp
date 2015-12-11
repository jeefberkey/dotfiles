class git (
  $remote_username = $::user,
  $userame = $::user,
  $email = undef,
) {
  include '::git'

  git::user { 'nick':
    user_name  => $username,
    user_email => $email,
  }

  exec { 'git_config_credential_username':
    command => "git config --global credential.username ${remote_username}",
    path    => ['/bin','/usr/bin'],
  }
  exec { 'git_config_credential_helper':
    command => 'git config --global credential.helper cache',
    path    => ['/bin','/usr/bin'],
  }
  exec { 'git_config_push_default':
    command => 'git config --global push.default simple',
    path    => ['/bin','/usr/bin'],
  }
  exec { 'git_config_core_editor':
    command => 'git config --global core.editor vim',
    path    => ['/bin','/usr/bin'],
  }
}
