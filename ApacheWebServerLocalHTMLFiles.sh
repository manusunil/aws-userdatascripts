#! /bin/bash
yum install -y httpd.x86_64
echo "Web Server from --------" >>/var/www/html/index.html
echo $(hostname) >>/var/www/html/index.html
systemctl start httpd.service
systemctl enable httpd.service