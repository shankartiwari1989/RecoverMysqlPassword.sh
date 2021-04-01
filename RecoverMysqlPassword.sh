# Changing a Lost or Non-Working MySQL Root Password

sudo service mysql stop
sudo test ! -e /var/run/mysqld && sudo mkdir -p /var/run/mysqld && sudo chown mysql:mysql /var/run/mysqld
sudo mysqld --skip-grant-tables --skip-networking &

mysql
FLUSH PRIVILEGES;
use mysql;
SET PASSWORD FOR root@'localhost' = PASSWORD('put-your-new-password-here');
quit

sudo killall mysqld
sudo service mysql start