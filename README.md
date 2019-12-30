# dotfiles
This repo is managed with [yadm](https://github.com/TheLocehiliosan/yadm).

* Fedora 29
* [swaywm/sway](https://github.com/swaywm/sway/) is my window manager
  * [waybar](https://github.com/alexays/waybar) made a custom statusbar
  * [mako](https://github.com/emersion/mako) manages my notifications
  * grim or slurp for screenshots
  * swayidle and swaylock
* [rofi](https://github.com/DaveDavenport/rofi) is my launcher
  * Fix `Terminal=true` in desktop files: `sudo ln -s /usr/bin/gnome-terminal /usr/bin/x-terminal-emulator`
* I'm using nvim, and have vim aliased to nvim, but I use Atom most of the time.
~~* [antigen](https://github.com/zsh-users/antigen) is my shell, you can check out my plugins and other conf in [.zshrc](.zshrc)~~
* I have switched to fish and [fisher](https://github.com/jorgebucaran/fisher)
* [pywal](https://github.com/dylanaraps/pywal) is my theme manager, with a wallpaper from [unsplash](https://unsplash.com) that has a few different colors so my terminal theme comes out with enough contrast
* [ranger](https://ranger.github.io/) is my file manager when Atom's file tree isn't useful
* I have a bunch of useful Vagrantfiles in [vagrant-playground](vagrant-playground)

Other useful software I don't feel like managing submodules for:
* firefox nightly bin
* [Color-Scripts](https://github.com/stark/Color-Scripts)

password stuff for rofi:
* store password: `secret-tool store --label=1password user nmiller@attilasec.com program 1password`
* get password: `secret-tool lookup program 1password`
* see config.fish for the rest of it
