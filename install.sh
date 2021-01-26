#!/bin/bash
sudo apt update -y; sudo apt upgrade -y -f
sudo apt install openssh-client openssh-server -y -f
sudo apt install nginx -y 
sudo apt install postfix -y 
sudo apt install dovecot -y 
sudo apt remove --purge php5* -y 
sudo add-apt-repository ppa:ondrej/php -y 
sudo apt update -y 
sudo apt install php5.6-common php5.6-cli php5.6 php5.6-mysql -y 
wget http://repo.mysql.com/mysql-apt-config_0.8.9-1_all.deb
sudo dpkg -i mysql-apt-config_0.8.9-1_all.deb
sudo apt update -y 
sudo apt install mysql-server -y 
wget https://github.com/roundcube/roundcubemail/releases/download/1.3.8/roundcubemail-1.3.8.tar.gz
tar -xvf roundcubemail-1.3.8.tar.gz
sudo mv roundcubemail-1.3.8 /usr/share/nginx/roundcubemail
sudo cp champiaoFile /tmp
cd /usr/share/nginx/roundcubemail
sudo apt install composer
rm -rf composer.json-dist
mv /tmp/champiaoFile ./composer.json
sudo apt install php-net-ldap2 php-net-ldap3
sudo composer install --no-dev
sudo apt install unzip
sudo ./bin/install-jsdeps.sh
sudo chown www-data:www-data temp/ logs/ -R


