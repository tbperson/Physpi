Physpi
Description: This project consists of several components that work together to display a slideshow of JPEG images in fullscreen mode on a web page served locally. It involves Python scripts for generating and updating the list of image paths, a local HTTP server for serving the web page and image files, and client-side JavaScript for fetching and displaying the images in a loop.

Components
Path Creator Script (path_creator.py):

This Python script continuously scans the current directory for JPEG files and writes their paths to a text file named jpeg_paths.txt.
HTTP Server (http.server):

A local HTTP server is launched using Python's built-in http.server module. It serves the web page (web_page.html) and JPEG files to be displayed.
Web Page (web_page.html):

An HTML page that displays a full-screen image using client-side JavaScript.
JavaScript fetches the list of image paths from jpeg_paths.txt and displays them in a loop, refreshing every 60 seconds.
Additional functionality is implemented to check for new images every 90 seconds and update the slideshow accordingly.
Autostart Configuration (autostart):

The autostart file configures the LXDE desktop environment to launch necessary components on boot:
Starts the starter.py script to run the HTTP server and path creator.
Opens the web_page.html in Midori browser in fullscreen mode.
Hides the mouse cursor after 2 seconds of inactivity using unclutter.
Disables power management to prevent the monitor from sleeping using xset.
Usage
Ensure all Python scripts (path_creator.py, starter.py) and HTML files (web_page.html) are in the correct directory (/home/pi/Desktop/WebPage/).
Modify the autostart file (autostart) to reflect the correct paths and configurations.
Reboot the Raspberry Pi to apply the changes.
The slideshow should start automatically upon boot, displaying images from the current directory in a loop.
Additional Notes
Compatibility: This project is tested on Raspberry Pi 1B running Raspbian with LXDE desktop environment, however it works on other pi models, windows and mac
Customization: Modify scripts and configurations as needed for specific requirements, such as changing the interval for checking new images or adjusting fullscreen settings.
