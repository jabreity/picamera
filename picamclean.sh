#Remove files older than 1 day
find /home/$USER/*.jpg ! -type d -mtime +1 -delete
