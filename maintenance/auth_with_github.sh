#echo -e "Host github.com\n\tStrictHostKeyChecking no\n\tUserKnownHostsFile=/dev/null\n" >  /etc/ssh/ssh_config

ssh-keygen -t rsa -N ""
mkdir -p  /root/.ssh
echo -e "Host github.com\n\tStrictHostKeyChecking no\n\tUserKnownHostsFile=/dev/null\n" >  /root/.ssh/config
ssh-keyscan github.com >> /root/.ssh/known_hosts
chmod 700 /root/.ssh
chmod -R 600 /root/.ssh/
chmod -R 600 /root/.ssh/id_rsa
chmod -R 644 /root/.ssh/id_rsa.pub

mkdir -p  ~/.ssh
echo -e "Host github.com\n\tStrictHostKeyChecking no\n\tUserKnownHostsFile=/dev/null\n" >  ~/.ssh/config
ssh-keyscan github.com >> ~/.ssh/known_hosts
chmod 700 ~/.ssh
chmod -R 600 ~/.ssh/
chmod -R 600 ~/.ssh/id_rsa
chmod -R 644 ~/.ssh/id_rsa.pub
