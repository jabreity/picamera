from picamera2 import Picamera2
from datetime import datetime
import time
picam2 = Picamera2()
camera_config = picam2.create_still_configuration(main={"size": (1920, 1080)})
picam2.configure(camera_config)
picam2.start()
for i in range(1, 60):
	second = None
	while True:
		if datetime.now().second != second:
			timestamp = str(datetime.now())
			timestamp = timestamp.replace(":", "-")
			timestamp = timestamp.replace(" ", "_")
			timestamp += '.jpg'
			picam2.capture_file(timestamp)
			second = datetime.now().second
picam2.stop()
