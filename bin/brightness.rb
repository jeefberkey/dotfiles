#!/usr/bin/env ruby

# this script should take in an arg to + or - the brighness of the screen

PATH = Dir.glob('/sys/class/backlight/*')[0]
STEPS = 30
WAIT = 0.005

@max_brightness = File.read("#{PATH}/max_brightness").chomp!.to_i
cur_brightness = File.read("#{PATH}/brightness").chomp!.to_f

def apply(real)
  if real > @max_brightness
    real = @max_brightness
  elsif real < 1
    real = 1
  end
  File.write("#{PATH}/brightness", real)
  real
end

case ARGV[0]
when 'inc'
  mode = 1
when 'dec'
  mode = -1
else
  puts "First argument must be inc or dec"
  exit 1
end

if ARGV[1].to_i > 100
  puts "Second argument must be from 0-100"
  exit 1
else
  delta = ARGV[1].to_f / 100
end

brightness_pct = cur_brightness / @max_brightness
real_brightness = ((brightness_pct + (delta * mode)) * @max_brightness).to_i
brightness_pct_new = brightness_pct + (delta * mode)

(1..STEPS).each do |x|
  step_size = (brightness_pct_new - brightness_pct) / STEPS
  step = (x * step_size * mode).to_i * @max_brightness
  #require 'pry'
  #binding.pry
  sleep(WAIT)
  apply(step)
end

#File.write("#{PATH}/brightness", real_brightness)

