# Hercules
  During 12 weeks, try to walk among the half-gods by doing the infamous twelve labors of Hercules

# Neamean Lion: 
  As Hercules strangling the mighty beast, you are going to have to create a cave and stayin the shadows.
So using vmware you have to create a virtual machine running the latest stable Debian release, once
this cave is created,to stay in the shadows change the default ssh port to the port you deem hidden enough

    apt-get install openssh-server                        - Installing openssh-server on fresh debian
    sed -i 's/Port 22/Port 55696/' /etc/ssh/sshd_config   - Replacing Port 22 with Port 55696 and writing to the file
    service sshd restart                                  - Then restarting sshd service in order to run on new port

# Lernaean Hydra
  In this project you have to turn in a fully functional server written in C that once started would answer a ping with two pong (yeah like the heads of the hydra growing back).

   - Compile Lernaean Hydra (Server)
   - Compile Lernaean Hydra (Client)
   - Run the server
   - Connect to server via client ./client [Ip Address]

# Ceryneian Hind
  In this project it aims to give you a basic approach on a REST API, and how it works and potentially give you a breif understanding on how web API are made. Write a script that takes a text file as a parameter with one login per line and returns the location of each person.

# Erymanthian Boar
  This project aims to give you a small approach on timed command and their execution.  Write a small shell script that when you run it will execute it’s code on the upcoming 21st of December at 8:42am. The content of the script can be anything you want.

  CONTENT=$(cat boar.txt)
  TIME=" 08:42 AM"
  DATE=" 12/21/2018"
  
  echo $CONTENT | at $TIME $DATE
