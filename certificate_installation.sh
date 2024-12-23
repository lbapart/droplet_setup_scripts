# The certificate will be saved in /etc/letsencrypt/live/yourdomain.com/
# fullchain.pem and privkey.pem are the files you need to use in your server configuration.
sudo apt-get update
sudo apt-get install certbot
sudo certbot certonly --standalone -d yourdomain.com