FROM ubuntu
RUN apt update
RUN DEBIAN_FRONTEND=noninteractive apt install ssh wget npm apache2 php php-curl  mysql-server php-cli php-fpm php-json php-common php-mysql php-zip php-gd php-mbstring  php-xml php-pear php-bcmath  git -y
RUN git clone https://github.com/kalcaddle/KodExplorer.git
RUN mv KodExplorer /var/www/html/pan
RUN chmod 755 /var/www/html -R
EXPOSE 80
CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]
