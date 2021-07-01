#!/bin/bash
sudo apt-get -y update && \
sudo apt-get -y install apache2 && \
sudo apt-get -y install php && \
cd ~ && \
mkdir web && \
cd web && \
echo '<!DOCTYPE html><html><body><p><?php echo "Hello World! Coming to you live from: " .gethostname(); ?></p></body></html>' > index.php && \
echo '<IfModule mod_dir.c>DirectoryIndex index.php index.html index.cgi index.pl index.xhtml index.htm</IfModule>' > dir.conf && \
sudo rm /var/www/html/index.html && \
sudo mv index.php /var/www/html/ && \
sudo rm /etc/apache2/mods-available/dir.conf && \
sudo mv dir.conf /etc/apache2/mods-available/
#END