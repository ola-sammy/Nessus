#!/bin/bash
sudo yum update -y
sudo curl --request GET --url 'https://www.tenable.com/downloads/api/v2/pages/nessus/files/Nessus-10.6.1-es7.x86_64.rpm' --output 'Nessus-10.6.1-es7.x86_64.rpm'
sudo rpm -ivh Nessus-10.6.1-es7.x86_64.rpm
sudo systemctl enable nessusd
sudo systemctl start nessusd
