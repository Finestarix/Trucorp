#######
# Web Server (Apache + PHP)
#######

# Import Docker Image
FROM php:7.4-apache

# Open Port 80
EXPOSE 80

# Copy Web Content
COPY ./web/ /var/www/html/

# Access Control List for www-data
RUN adduser www-data www-data
RUN chown --recursive www-data:www-data /var/www/html/
RUN chmod --recursive 774 /var/www/html/

# Add MySQLi Plugin
RUN docker-php-ext-install mysqli
RUN docker-php-ext-enable mysqli

