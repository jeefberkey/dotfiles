function sway-screenshare --description 'Share a specific part if your screen on /dev/video7'
  #command wf-recorder --muxer=v4l2 --codec=rawvideo --file=/dev/video7 --pixel-format=yuv420p --geometry=(slurp -b "#45858820" -c "#45858880" -w 3 -d)
  command wf-recorder --muxer=v4l2 --codec=rawvideo --file=/dev/video7 --pixel-format=yuv420p
end
