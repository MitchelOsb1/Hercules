# Hercules

  During 12 weeks, try to walk among the half-gods by doing the infamous twelve labors of Hercules

# Neamean Lion: 
  As Hercules strangling the mighty beast, you are going to have to create a cave and stayin the shadows.
So using vmware you have to create a virtual machine running the latest stable Debian release, once
this cave is created,to stay in the shadows change the default ssh port to the port you deem hidden enough

    apt-get install openssh-server                        - Installing openssh-server on fresh debian
<<<<<<< HEAD
    sed -i 's/Port 22/Port 55696/' /etc/ssh/sshd_config   - Replacing Port 22 with Port 55696 and writing to the file
    service sshd restart                                  - Then restarting sshd service in order to run on new port
=======
    sed -i 's/#Port 22/Port 55696/' /etc/ssh/sshd_config  - Replacing disabled Port 22 with Port 55696 and writing to the file
    service sshd restart                                  - Then restarting sshd service in order to run on new port

# Lernaean Hydra
  In this project you have to turn in a fully functional server written in C that once started would answer a ping with two pong (yeah like the heads of the hydra growing back).

   - Compile Lernaean Hydra
   - Compile Lernaean Hydra Client
   - Run Server
   - Connect to server via client ./client [Ip Address]
>>>>>>> 06c7a0ffa4509de2dec26a04885b4ac3c4ade8ab
