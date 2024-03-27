# Physpi

## Description

This project consists of several components that work together to display a slideshow of JPEG images in fullscreen mode on a web page served locally. It involves Python scripts for generating and updating the list of image paths, a local HTTP server for serving the web page and image files, and client-side JavaScript for fetching and displaying the images in a loop.

### Components

1. **Path Creator Script (`path_creator.py`):**
   - This Python script continuously scans the current directory for JPEG files and writes their paths to a text file named `jpeg_paths.txt`.

2. **Backend program (`starter.py`):**
   - A local HTTP server is launched using Python3's built-in `http.server` module. It serves the web page (`web_page.html`) and JPEG files to be displayed
   - This also launches ('path_creator.py'):**

3. **Web Page (`web_page.html`):**
   - An HTML page that displays a full-screen image using client-side JavaScript.
   - JavaScript fetches the list of image paths from `jpeg_paths.txt` and displays them in a loop, refreshing every 60 seconds.
   - Additional functionality is implemented to check for new images every 90 seconds and update the slideshow accordingly.

4. **Autostart Configuration (`autostart`):**
   - The `autostart` file configures the LXDE desktop environment to launch necessary components on boot:
     - Starts the `starter.py` script to run the HTTP server and path creator.
     - Opens the `web_page.html` in Midori browser in fullscreen mode.
     - Hides the mouse cursor after 2 seconds of inactivity using `unclutter`.
     - Disables power management to prevent the monitor from sleeping using `xset`.

### Usage on Raspberry pi

1. Ensure all Python scripts (`path_creator.py`, `starter.py`) and HTML files (`web_page.html`) are in the correct directory (`/home/pi/Desktop/WebPage/`).
2. Modify the autostart file (`autostart`) to reflect the correct paths and configurations.
3. Reboot the Raspberry Pi to apply the changes.
4. The slideshow should start automatically upon boot, displaying images from the current directory in a loop.

### Usage on Windows and Mac

- Simply start up the `starter.py` script and open the HTML file (`web_page.html`) in a web browser by accessing `localhost`.

## Additional Notes

- **Compatibility:** This project is tested on Raspberry Pi 1B running Raspbian with LXDE desktop environment. However, it works on other Pi models, Windows, and Mac.
- **Customization:** Modify scripts and configurations as needed for specific requirements, such as changing the interval for checking new images or adjusting fullscreen settings.
