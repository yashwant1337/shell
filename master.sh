#! /bin/bash

yum install httpd -y
cd /var/www/html
echo "This is Master Node" > index.html
cd
systemctl start httpd
systemctl enable httpd
hostnamectl set-hostname Master
