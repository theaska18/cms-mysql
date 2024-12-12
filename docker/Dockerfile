# Gunakan image resmi PHP dengan Apache
#FROM php:8.0-apache
FROM arm64v8/php:7.2-apache
RUN ls -l
# Instal ekstensi PHP yang dibutuhkan CodeIgniter 
RUN docker-php-ext-install mysqli pdo pdo_mysql
#RUN apt-get update
RUN ls -l

# Salin file konfigurasi
COPY docker/php.ini /usr/local/etc/php/
COPY docker/sites.conf /etc/apache2/sites-available/000-default.conf

# Aktifkan mod_rewrite untuk Apache
RUN a2enmod rewrite

# Set direktori kerja
WORKDIR /var/www/html

# Pastikan folder html ada dan buat jika belum ada
RUN mkdir -p /var/www/html

# Salin aplikasi ke dalam container
COPY app/ /var/www/html/

# Memeriksa apakah file sudah disalin ke /var/www/html/
RUN ls -l /var/www/html/

# Set hak akses
RUN chown -R www-data:www-data /var/www/html

# Expose port 80 untuk akses HTTP
EXPOSE 80