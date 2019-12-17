#!/bin/bash

echo
echo
echo
echo script by Daniyal Khan 
echo
echo
echo
echo OPTIONAL INSTALL OF phpMyAdmin
echo
echo
echo


#Install the required dependencies.
sudo yum install php-mbstring -y

#Restart Apache.
sudo systemctl restart httpd

#Restart php-fpm.
sudo systemctl restart php-fpm

#Navigate to the Apache document root at /var/www/html.
cd /var/www/html

#Latest phpMyAdmin release from the offical webpage.
wget https://www.phpmyadmin.net/downloads/phpMyAdmin-latest-all-languages.tar.gz

#Create a phpMyAdmin folder and extract the package into it with the following command.
mkdir phpMyAdmin && tar -xvzf phpMyAdmin-latest-all-languages.tar.gz -C phpMyAdmin --strip-components 1

#Delete the phpMyAdmin-latest-all-languages.tar.gz tarball.
rm phpMyAdmin-latest-all-languages.tar.gz

#Start MySQL server.
sudo systemctl start mariadb

echo
echo
echo In a web browser, type the URL of your phpMyAdmin installation.
echo
echo
echo
echo Log in to your phpMyAdmin installation with the root user name and the MySQL root password you created earlier.
echo
echo
echo




