apt-get update
apt-get install bind9 -y

mkdir /etc/bind/delegasi

cp etc/bind/named.conf.local /etc/bind/named.conf.local
cp etc/bind/named.conf.options /etc/bind/named.conf.options
cp etc/bind/delegasi/operation.wise.itb05.com /etc/bind/delegasi/operation.wise.itb05.com

service bind9 restart