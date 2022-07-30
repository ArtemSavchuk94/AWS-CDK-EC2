#!/bin/bash
sudo yum update -i
sudo su
sudo yum install git -y
amazon-linux-extras install docker -y
sudo service docker start
sudo usermod -a -G docker ec2-user
sudo chkconfig docker on
sudo curl -L https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m) -o /usr/bin/docker-compose
sudo chmod +x /usr/bin/docker-compose
sudo git clone https://github.com/Devops-AS94/devops-ui.git
cd devops-ui
sudo docker-compose up -d
#pwd-/usr/bin/devops-ui