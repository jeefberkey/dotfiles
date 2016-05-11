#!/usr/bin/env ruby

# this is the gem name as well
require 'i3ipc'
require 'json'

cutoff = 80
suffix = " - "

def shorten(title, cutoff, suffix)
  if title.length > cutoff
    sections = title.split(" - ")
    if sections[0].eql?(sections[-1])
      puts sections[0..cutoff-suffix.length]
    else
      return sections[0][0..cutoff-suffix.length] + suffix + sections[-1]
    end
  else
    return title
  end
end

i3 = I3Ipc::Connection.new

header = {
  "version"      => 1,
  "click_events" => true
}

block = Proc.new do |reply|
  if reply.change == 'focus' || reply.change == 'title'
    title = reply.container.name
    title.chomp!

    i3bar = {
      :full_text  => title,
      :short_text => shorten(title, cutoff, suffix),
      :align      => 'left'
    }

    puts header.to_json + "[[]," + i3bar.to_json + "]"

    #require 'pry'
    #binding.pry

    `pkill -RTMIN+12 i3blocks`
  end
end

pid = i3.subscribe('window', block)
pid.join

