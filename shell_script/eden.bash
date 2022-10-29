apt-get install lynx -y
apt-get install apache2 -y
service apache2 start
apt-get install php -y
apt-get install libapache2-mod-php7.0 -y
service apache2 restart

cp etc/apache2/ports.conf /etc/apache2/ports.conf
cp etc/apache2/sites-available/000-default.conf /etc/apache2/sites-available/000-default.conf
cp etc/apache2/sites-available/eden.wise.itb05.com.conf /etc/apache2/sites-available/eden.wise.itb05.com.conf
cp etc/apache2/sites-available/strix.operation.wise.itb05.com.conf /etc/apache2/sites-available/strix.operation.wise.itb05.com.conf

cp var/www/eden.wise.itb05.com /var/www/ -r
cp var/www/strix.operation.wise.itb05.com /var/www/ -r
cp var/www/eden.wise.itb05.com/.htaccess /var/www/eden.wise.itb05.com/.htaccess

htpasswd -c -b /etc/apache2/.htpasswd Twilight opStrix
cd /etc/apache2/sites-available
a2ensite eden.wise.itb05.com.conf
a2ensite strix.operation.wise.itb05.com.conf
a2enmod rewrite
cd /root

service apache2 restart