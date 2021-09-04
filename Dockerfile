FROM ubntu
RUN apt update
RUN DEBIAN_FRONTEND=noninteractive apt install curl wget  apache2 php php-curl   php-cli php-fpm php-json php-common php-zip php-gd php-mbstring  php-xml php-pear php-bcmath  git -y
RUN git clone https://github.com/kalcaddle/KodExplorer.git
RUN mkdir -p  /var/run/apache2
RUN rm -rf /var/www/html/
RUN mv KodExplorer /var/www/html/
RUN chmod 755 /var/www/html -R
EXPOSE 80
CMD apachectl -D FOREGROUND
