############################################################
# Dockerfile to build MongoDB container images
# Based on Ubuntu
############################################################
# Set the base image to Ubuntu
FROM ubuntu

# File Author / Maintainer
MAINTAINER Paulo Renato

# Update the repository sources list
RUN apt-get update

# Install Apache
RUN apt-get install -y apache2

# Copy Pages
COPY ./www/* /var/www/html/

# Start Apache
CMD /usr/sbin/apache2ctl -D FOREGROUND

# Expose the default port
EXPOSE 80

##################### INSTALLATION END #####################

