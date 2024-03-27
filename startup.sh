@lxpanel --profile LXDE-pi
@pcmanfm --desktop --profile LXDE-pi
@xscreensaver -no-splash
#Starts 'starter' file
@python3 /home/pi/Desktop/WebPage/starter.py &
@sleep 10
#Opens the display page in fullscreen
@midori -e Fullscreen http://localhost:8000/web_page.html &
#hides mouse if idle for 2 seconds
@unclutter -idle 2 -root
#Disables power management system for monitor to prevent sleeping
@xset s off
@xset -dpms

#ONLY USED FOR THE PI



