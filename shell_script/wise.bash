apt-get update
apt-get install bind9 -y

mkdir /etc/bind/jarkom

cp etc/bind/named.conf.local /etc/bind/named.conf.local
cp etc/bind/named.conf.options /etc/bind/named.conf.options
cp etc/bind/jarkom/wise.itb05.com /etc/bind/jarkom/wise.itb05.com
cp etc/bind/jarkom/2.47.10.in-addr.arpa /etc/bind/jarkom/2.47.10.in-addr.arpa
service bind9 restart


apt-get install lynx -y
apt-get install apache2 -y
service apache2 start
apt-get install php -y
apt-get install libapache2-mod-php7.0 -y
service apache2 restart


cp etc/apache2/ports.conf /etc/apache2/ports.conf
cp etc/apache2/sites-available/wise.itb05.com.conf /etc/apache2/sites-available/wise.itb05.com.conf
cp var/www/wise.itb05.com /var/www/ -r

cd /etc/apache2/sites-available
a2ensite wise.itb05.com.conf
cd /root

service apache2 restart