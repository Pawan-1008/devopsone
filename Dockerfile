FROM docker.io/centos:7
RUN yum install apache2 -y
COPY index.html  /usr/local/apache2/htdocs
CMD ["apache2ctl","-D","FOREGROUND"]
