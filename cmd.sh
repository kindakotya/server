nginx
service mysql start
mysql CREATE DATABASE wordpress DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci
mysql GRANT ALL ON wordpress.* TO 'gmayweat'@'localhost' IDENTIFIED BY '1'
mysql FLUSH PRIVILEGES
# mkdir /var/run/mysqld
# mkfifo /var/run/mysqld/mysqld.sock
# chown -R mysql /var/run/mysqld
# chmod 755 /var/run/mysqld/mysqld.sock
sleep inf