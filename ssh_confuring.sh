
EMAIL="email@example.com"
ssh-keygen -t ed25519 -b 4096 -C $EMAIL
git config --global user.email ${EMAIL}
chown -R $USER:$USER ~/.ssh
chmod 700 ~/.ssh
chmod 644 ~/.ssh/*
chmod 600 ~/.ssh/id_ed25519 ~/.ssh/known_hosts
ssh-add ~/.ssh/id_ed25519
