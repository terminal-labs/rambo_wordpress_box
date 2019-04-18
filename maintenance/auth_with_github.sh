mkdir -p  ~/.ssh
cd /home/circleci/.ssh
rm *
ssh-keygen -t rsa -N "" -f /home/circleci/.ssh/id_rsa 
sudo echo -e "Host github.com\n\tStrictHostKeyChecking no\n\tUserKnownHostsFile=/dev/null\n" >  ~/.ssh/config
sudo echo -e "Host github.com\n\tStrictHostKeyChecking no\n\tUserKnownHostsFile=/dev/null\n" >  /etc/ssh/sshd_config
sudo ssh-keyscan github.com >> ~/.ssh/known_hosts
sudo chmod 700 ~/.ssh
sudo chmod -R 600 ~/.ssh/
sudo chmod -R 600 /home/circleci/.ssh/id_rsa
sudo chmod -R 644 /home/circleci/.ssh/id_rsa.pub
cd ~
git clone https://github.com/pallets/flask.git
