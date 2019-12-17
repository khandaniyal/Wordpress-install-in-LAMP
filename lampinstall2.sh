#!/bin/bash

echo
echo
echo
echo script by Daniyal Khan 
echo
echo
echo
echo
echo
echo LAMP INSTALL PART 2
echo
echo
echo
echo

#To verify your membership in the apache group.
groups 
ec2-user adm wheel apache systemd-journal

#Change the group ownership of /var/www and its contents to the apache group.
sudo chown -R ec2-user:apache /var/www

#To add group write permissions and to set the group ID
sudo chmod 2775 /var/www && find /var/www -type d -exec sudo chmod 2775 {} \;

#To add group write permissions, recursively change the file permissions of /var/www and its subdirectories.
find /var/www -type f -exec sudo chmod 0664 {} \;

#Secure your DB server.
#Start the MariaDB server.
sudo systemctl start mariadb

#Run MySQL secure installation.
sudo mysql_secure_installation

#Restart it when you need it again.
sudo systemctl stop mariadb

#Start MariaDB with every boot.
sudo systemctl enable mariadb

#

#

#

#

#

#


