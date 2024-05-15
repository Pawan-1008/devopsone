FROM docker.io/ubuntu
RUN apt-get update -y && \
    apt-get install apache2 -y
COPY index.html  /var/www/html
COPY style.css  /var/www/html
COPY pixelgame.jpg /var/www/html
COPY  Arrow-Right-1-icon.png /var/www/html
CMD ["apache2ctl","-D","FOREGROUND"]
