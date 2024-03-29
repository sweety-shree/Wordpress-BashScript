#!/bin/bash
sudo yum install git -y
sudo yum install docker -y
sudo systemctl start docker
sudo systemctl enable docker
sudo chmod 666 /var/run/docker.sock
sudo usermod -a -G docker ec2-user
sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
git clone https://github.com/GOUSERABBANI44/wordpress.git 
cd wordpress
usr/local/bin/docker-compose up -d
