node /jeefberkey*/ {
  #$packages = [
  #  'tmux','i3','git','network-manager-applet',
  #  'binutils','gcc','make','patch','libgomp','glibc-headers','glibc-devel','kernel-headers','kernel-devel','dkms',
  #  'lightdm','lightdm-gtk-greeter-settings',
  #  'golang','gimp',
  #  'gtk-doc','gobject-introspection-devel','dbus-python','python-simplejson','gitk','meld',
  #  'gnome-keyring-pam','libgnome-keyring-devel',
  #  'gnome-tweak-tool','feh','xdotool','lxinput','lxappearance','gtk-murrine-engine','w3m-img',
  #  'python-imaging','lm_sensors','mpstat','acpi','sysstat','xbacklight',
  #  'libev-devel','libxcb-devel','libXinerama-devel','libxkbcommon-devel','libXrandr-devel','pango-devel','pcre-devel','startup-notification-devel','xcb-util-cursor-devel','xcb-util-devel','xcb-util-keysyms-devel','xcb-util-wm-devel','yajl-devel',
  #  'cmake','rubygem-ronn',
  #  'pkg-config','autoconf','automake','libxinerama','libxft2','libpangocairo','libcairo','libcairo-xlib','libglib2.0','libx11','libstartup-notification-1.0',
  #  'android-tools','java-1.8.0-openjdk',
  #  'libstdc++.i686','ncurses-libs.i686','zlib.i686',
  #  'dbus-glib-devel', 'libXScrnSaver-devel', 'libnotify-devel', 'libxdg-basedir-devel',
  #]

  #package { $packages:
  #  provider => 'dnf',
  #  ensure   => latest,
  #}

  #rvm::system_user { 'nick': }
  #rvm_system_ruby {
  #  'ruby-1.9':
  #    ensure      => present;
  #  'ruby-2.0':
  #    ensure      => present,
  #    default_use => true;
  #}

  include '::profiles'
}
