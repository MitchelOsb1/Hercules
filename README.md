# Hercules

  During 12 weeks, try to walk among the half-gods by doing the infamous twelve labors of Hercules

# Neamean Lion: 
  As Hercules strangling the mighty beast, you are going to have to create a cave and stayin the shadows.
So using vmware you have to create a virtual machine running the latest stable Debian release, once
this cave is created,to stay in the shadows change the default ssh port to the port you deem hidden enough

    apt-get install openssh-server                        - Installing openssh-server on fresh debian
    sed -i 's/Port 22/Port 55696/' /etc/ssh/sshd_config   - Replacing Port 22 with Port 55696 and writing to the file
    service sshd restart                                  - Then restarting sshd service in order to run on new port
