FROM nyanpass/apache2.2-php5.2.17

RUN mkdir /usr/local/apache2/htdocs/admin /secret

COPY index.html /usr/local/apache2/htdocs
COPY flag.php /usr/local/apache2/htdocs/admin
COPY .htpasswd /secret
COPY httpd.conf /usr/local/apache2/conf/
COPY .htaccess /usr/local/apache2/htdocs