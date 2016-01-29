#!/usr/bin/env ruby

require 'i3ipc'

cutoff = 60
suffix = " - "

i3 = I3Ipc::Connection.new

block = Proc.new do |reply|
  if reply.change == 'title' || reply.change == 'focus'
    title = reply.container.name
    title.chomp!

    if title.length > cutoff
      sections = title.split(" - ")
      if sections[0].eql?(sections[-1])
        puts sections[0..cutoff-suffix.length]
      else
        puts sections[0][0..cutoff-suffix.length] + suffix + sections[-1]
      end
    else
      puts title
    end

    `pkill -RTMIN+12 i3blocks`
  end
end

pid = i3.subscribe('window', block)
pid.join

#i3.close
