#! /bin/bash

if
  (pgrep -f picamera2still.py)
then
  echo picamera2still.py is running
else
  echo start pycamera2still.py
  (nohup python /home/$USER/picamera2still.py &)
fi
