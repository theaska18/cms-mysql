ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY '1234';
ALTER USER 'theaska'@'%' IDENTIFIED WITH mysql_native_password BY '1234';
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '1234';
FLUSH PRIVILEGES;
