#!/bin/bash

echo
echo
echo
echo script by Daniyal Khan :D
echo
echo
echo

#First of all update the system =D 
sudo yum update -y

#Install the latest versions of MariaDB and PHP packages.
sudo amazon-linux-extras install -y lamp-mariadb10.2-php7.2 php7.2

#Install the Apache web server, MariaDB, and PHP software packages.
sudo yum install -y httpd mariadb-server

#Start the httpd server.
sudo systemctl start httpd

#Enable the Apache web server each time when it boots.
sudo systemctl enable httpd

#Verify that httpd is running.
sudo systemctl is-enabled httpd

#In your instance add a inbound rule to allow port 80 conncetions to your instance.
#When you are done with the previous step copy your instance dns and paste it in your brwoser, a testpage will appear, that will be the index.html document located in /var/www/html, which default is owned by root.

#Set file permissions to the apache group.
sudo usermod -a -G apache ec2-user

#Log out and then log in again to pick up the new group.
exit

#


#


#


#


#


#



#


#
