# Commands to install and configure a firewall on a Linux system

sudo apt-get update
sudo apt-get install ufw

# Limit SSH access to the server
sudo ufw allow ssh
sudo ufw enable
