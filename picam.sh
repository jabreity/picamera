#! /bin/bash
# to stop, use kill -9 $(./picam.sh)
if
  (pgrep -f picamera2still.py)
then
  :
else
  echo start pycamera2still.py
  (python /home/$USER/picamera2still.py &>/dev/null & disown))
fi
