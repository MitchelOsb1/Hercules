# Hercules
  During 12 weeks, try to walk among the half-gods by doing the infamous twelve labors of Hercules

# Nemean Lion: 
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
```
  CONTENT="cat boar.txt"
  TIME="08:42 AM"
  DATE="12/21/2018"

  echo $CONTENT | at $TIME $DATE
```
# Augean Stables
  Using Valgrind and/or GDB or even without any of these tools you need to make sure that our program has no more memory leaks. It needs to be perfectly waterproof (no leaks, waterproof, get it ;) ).

# Stymphalian Birds
  Write a script that create your project with at least a gitignore, if it’s a C project it has to add a Makefile and src/lib. You’re script has to take options like the language of your project and the extend of the options (like if you’re including your libft or so).

<p align="center">
  <img src="https://github.com/MitchelOsb1/Hercules/blob/master/ETC/Stymphalian_Birds.png" height="75" width="750">
</p>

# Cretan Bull
  You have to create a champion that will be able to defeat other champions. It has to stay "live", have more instructions then just the "live" one, having functions is also mandatory (we are coders after all, damn it!) and finally it has to be able to beat the easiest pawns (Zork).
  
<p align="center">
  <img src="https://github.com/MitchelOsb1/Hercules/blob/master/ETC/Cretan%20Bull.png" height="200" width="430">
</p>

# Girdle of Hippolyta
  Write a program that uses SMTP to send email.
 <p align="center">
  <img src="https://github.com/MitchelOsb1/Hercules/blob/master/ETC/girdle_of_hippo.png" height="42" width="400">
</p>
