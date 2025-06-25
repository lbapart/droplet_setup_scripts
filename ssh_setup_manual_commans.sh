#RUN ALL THE COMMANDS MANUALLY ONE BY ONE

# Change root password
passwd root

# Creating a new user for ssh connection
adduser username

# Adding the user to the sudo group
usermod -aG sudo username

# Run this command and add the line username ALL=(ALL:ALL) ALL below root ALL=(ALL:ALL) ALL
visudo

# Switch to the new user
su - username

# Generate a new ssh key pair
ssh-keygen -t rsa

# Create authorized_keys file and add the public key which you have on your local machine
vim ~/.ssh/authorized_keys

# Login as root
su -
# Disable ssh root login. Open the sshd_config file and change PermitRootLogin to no
sudo vim /etc/ssh/sshd_config

# Restart the ssh service
systemctl restart sshd
