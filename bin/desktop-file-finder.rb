#!/usr/bin/env ruby
# The goal of this so far is to find desktop files and print them to stdout
# Eventually this will turn into a rofi mode that supports history
#
# desktop files are located in the following directories:
# * /usr/share/applications
# * /usr/local/share/applications
# * ~/.local/share/applications

require 'parseconfig'
require 'dmenu'

def load_desktop_files()
  xdg_app_dirs = [
    '/usr/share/applications/*.desktop',
    '/usr/local/share/applications/*.desktop',
    ENV['HOME']+'/.local/share/applications/*.desktop']
  apps = []

  xdg_app_dirs.each do |dir|
    #puts "\e[1m#{dir}\e[22m"
    Dir.glob(dir) do |f|
      # doesn't add Hidden or NoDisplay desktop files
      app = ParseConfig.new(f)
      if app["Desktop Entry"]["NoDisplay"].eql?("true") || app["Desktop Entry"]["Hidden"].eql?("true")
        apps << app
      end
    end
  end

  apps
end

apps = load_desktop_files()

menu = Dmenu.new
menu.case_insensitive = true
apps.each do |app|
  item = Dmenu::Item.new(app["Desktop Entry"]["Name"],app["Desktop Entry"]["Exec"])
  menu.items << item
end
choice = menu.run

# apps should be launched with i3-msg exec #{exec}
system("i3-msg exec #{"choice.value"}")
puts choice.value
