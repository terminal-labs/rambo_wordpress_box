mkdir -p  ~/.ssh
ssh-keygen -t rsa -N ""
sudo echo -e "Host github.com\n\tStrictHostKeyChecking no\n\tUserKnownHostsFile=/dev/null\n" >  ~/.ssh/config
sudo ssh-keyscan github.com >> ~/.ssh/known_hosts
sudo chmod 700 ~/.ssh
sudo chmod -R 600 ~/.ssh/
sudo chmod -R 600 ~/.ssh/id_rsa
sudo chmod -R 644 ~/.ssh/id_rsa.pub
