import subprocess
import os
import time

# Start local HTTP server
http_server_process = subprocess.Popen(["python", "-m", "http.server", "8000"])

# Start path_creator.py script
path_creator_process = subprocess.Popen(["python", "path_creator.py"])

# Wait for a short time for the server to start
time.sleep(2)

try:
    http_server_process.wait()
except KeyboardInterrupt:
    http_server_process.terminate()

try:
    path_creator_process.wait()
except KeyboardInterrupt:
    path_creator_process.terminate()
