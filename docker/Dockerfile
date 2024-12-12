# Use the official MySQL 8.0 image from Docker Hub
FROM mysql:8.0

# Set environment variables for MySQL
# Only set the root password and user password (no default database)
ENV MYSQL_ROOT_PASSWORD=1234
ENV MYSQL_USER=theaska
ENV MYSQL_PASSWORD=1234

RUN echo "[mysqld]\ndefault-authentication-plugin=mysql_native_password" > /etc/mysql/conf.d/custom.cnf


# Expose the default MySQL port
EXPOSE 3306

# The official MySQL image will automatically start the MySQL server when the container starts
CMD ["mysqld"]
