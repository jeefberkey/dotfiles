docker build -t jeefberkey/mopidy .
docker run -it -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY --device /dev/snd jeefberkey/mopidy

https://blog.jessfraz.com/post/docker-containers-on-the-desktop/
http://wiki.ros.org/docker/Tutorials/GUI
