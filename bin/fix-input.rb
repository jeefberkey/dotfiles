#!/usr/bin/env ruby
# require 'readline'

TOUCHPAD_ON  = "xinput set-prop 11 \"Device Enabled\" 1"
TOUCHPAD_OFF = "xinput set-prop 11 \"Device Enabled\" 0"
SCREEN_ON    = "xinput set-prop 9 \"Device Enabled\" 1"
SCREEN_OFF   = "xinput set-prop 9 \"Device Enabled\" 0"
ERROR = "syntax is <touchpad|screen> <on|off>"

# if ARGV.length >= 2 then
#   puts ERROR
#   exit 1
# end

device = ARGV[0]
status = ARGV[1]

case device

when 'touchpad'
  case status
  when 'on' then system(TOUCHPAD_ON)
  when 'off' then system(TOUCHPAD_OFF)
  else puts ERROR
  end

when 'screen'
  case status
  when 'on' then system(SCREEN_ON)
  when 'off' then system(SCREEN_OFF)
  else puts ERROR
  end

else
  system(SCREEN_OFF)
  sleep(1)
  system(SCREEN_ON)
  sleep(1)
  system(TOUCHPAD_OFF)
  sleep(1)
  system(TOUCHPAD_ON)

end
