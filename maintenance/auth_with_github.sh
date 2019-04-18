mkdir -p  /home/circleci/.ssh
cd /home/circleci/.ssh
rm *
sudo ssh-keygen -t rsa -N "" -f /home/circleci/.ssh/id_rsa 
sudo echo -e "Host github.com\n\tStrictHostKeyChecking no\n\tUserKnownHostsFile=/dev/null\n" >  /home/circleci/.ssh/config
sudo ssh-keyscan github.com >> /home/circleci/.ssh/known_hosts
sudo chmod 700 /home/circleci/.ssh
sudo chmod -R 600 /home/circleci/.ssh/
sudo chmod 600 /home/circleci/.ssh/id_rsa
sudo chmod 644 /home/circleci/.ssh/id_rsa.pub
sudo chmod -R 777 /home/circleci/.ssh
sudo chown -R circleci /home/circleci/.ssh
cat /home/circleci/.ssh/known_hosts
cd ~
pwd
git clone https://github.com/pallets/flask.git
