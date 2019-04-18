mkdir -p  ~/.ssh
ssh-keygen -t rsa -N ""
echo -e "Host github.com\n\tStrictHostKeyChecking no\n\tUserKnownHostsFile=/dev/null\n" >  /etc/ssh/ssh_config
echo -e "Host github.com\n\tStrictHostKeyChecking no\n\tUserKnownHostsFile=/dev/null\n" >  ~/.ssh/config
ssh-keyscan rsa github.com >>  ~/.ssh/known_hosts
ssh-keyscan github.com >> ~/.ssh/known_hosts
chmod 700 ~/.ssh
chmod -R 600 ~/.ssh/
cat ~/.ssh/known_hosts
cat  ~/.ssh/config
