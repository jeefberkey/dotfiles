#!/bin/ruby

width = 500
line_height = 30
lines = 6
resX, resY = `xrandr`.scan(/current (\d+) x (\d+)/).flatten

locX = (resX.to_i - width) / 2
locY = (resY.to_i - line_height*lines) / 2

puts resX,resY
puts locX,locY

launcher = '/usr/local/bin/j4-dmenu-desktop'
dmenu_cmd = ['"dmenu -i',
  '-fn \'Source Code Pro for Powerline-12\'',
  '-p \'Run:\'',       # prompt
  "-l #{lines}",       # lines of results
  "-w #{width}",       # width of window
  "-h #{line_height}", # line height
  "-x #{locX}",        # x offset
  "-y #{locY}",        # y offset
  '"']
launcher_opts = "--use-xdg-de --term=\"gnome-terminal\" --dmenu=#{dmenu_cmd.join(" ")}"

cmd = [launcher,launcher_opts].join(" ")
`#{cmd}`
