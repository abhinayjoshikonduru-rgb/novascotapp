FROM amazonlinux:latest

RUN yum install httpd -y

COPY index.html.txt /var/www/html/

EXPOSE 80

WORKDIR /opt

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
