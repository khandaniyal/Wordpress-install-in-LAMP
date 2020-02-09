**How to create a user in MySQL**
---

- Create a user and password

```
CREATE USER 'wordpress-user'@'localhost' IDENTIFIED BY 'your_strong_password';
```

- Create a database

```
CREATE DATABASE `wordpress-db`;
``` 

- Add privileges for the database to the WordPress user

```
GRANT ALL PRIVILEGES ON `wordpress-db`.* TO "wordpress-user"@"localhost";
```

- Empty the privileges to save the changes.

```
FLUSH PRIVILEGES;
```

- Exit from mysql

```
exit
```
---


**How to create and edit the wp-config.php**
---

- Copy the ```wp-config-sample.php```

```
cp wocp wordpress/wp-config-sample.php wordpress/wp-config.phprdpress/wp-config-sample.php wordpress/wp-config.php
```

- Edit the ```wp-config-sample.php```

```
nano wordpress/wp-config.php
```

- Look out for the line which defines the ```DB_NAME``` and change the ```database_name_here```
 
``` 
 define('DB_NAME', 'wordpress-db');
```

- Look out for the line which defines the ```DB_PASSWORD``` and change ```password_here```

```
define('DB_PASSWORD', 'your_strong_password');
```
- To install your WordPress files under the Apache document root.
```
cp -r wordpress/* /var/www/html/
```

```
mkdir /var/www/html/blog
cp -r wordpress/* /var/www/html/blog/
```

**If any of the scripts doesn´t work, try to copy them in ORDER from the first script to the last script. Also if you want to see the documentation of the installation here are the links to the following documentation.
---
```
https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/hosting-wordpress.html
https://docs.aws.amazon.com/es_es/AWSEC2/latest/UserGuide/ec2-lamp-amazon-linux-2.html
```





