mkdir -p  ~/.ssh
ssh-keygen -t rsa -N ""
echo -e "Host github.com\n\tStrictHostKeyChecking no\n\tUserKnownHostsFile=/dev/null\n" >  ~/.ssh/config
ssh-keyscan github.com >> ~/.ssh/known_hosts
chmod 700 ~/.ssh
chmod -R 600 ~/.ssh/
chmod -R 600 ~/.ssh/id_rsa
chmod -R 644 ~/.ssh/id_rsa.pub
