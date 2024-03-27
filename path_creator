import os
import time

starting_time = time.time()
elapsed_time = ""

while True:
   # Get the current working directory
   current_dir = os.getcwd()

   # Create a list to store the JPEG file paths with extensions
   jpeg_files = []

   # Iterate through all files in the current directory
   for filename in os.listdir(current_dir):
      if filename.lower().endswith(('.jpg', '.jpeg')):
          # Construct the full file path relative to the base directory
          file_path = os.path.relpath(os.path.join(current_dir, filename), start=current_dir)
          # Append the file path with the .jpg extension to the list
          jpeg_files.append(file_path)  # Include the extension here

   # Write the list of JPEG files to a text file
   with open("jpeg_paths.txt", "w") as text_file:
      for file_path in jpeg_files:
          text_file.write(file_path + "\n")

   #calculate the duration of time the program has been running and output to terminal
   elapsed_time = time.time() - starting_time
   print("JPEG file paths saved to jpeg_paths.txt |", elapsed_time, "Elapsed")
   time.sleep(60)





