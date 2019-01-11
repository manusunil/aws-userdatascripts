#! /bin/bash
yum install -y httpd.x86_64
systemctl start httpd.service
systemctl enable httpd.service
yum install -y amazon-efs-utils
sudo mount -t efs <changetotheEFSid>:/ /var/www/html 
echo "EC2 Instance on EFS Share" >/var/www/html/index.html