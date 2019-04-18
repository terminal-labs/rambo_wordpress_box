mkdir -p  /root/.ssh
ssh-keygen -t rsa -N ""
echo -e "Host github.com\n\tStrictHostKeyChecking no\n\tUserKnownHostsFile=/dev/null\n" >  /etc/ssh/ssh_config
echo -e "Host github.com\n\tStrictHostKeyChecking no\n\tUserKnownHostsFile=/dev/null\n" >  /root/.ssh/config
ssh-keyscan rsa github.com >>  /root/.ssh/known_hosts
ssh-keyscan github.com >> /root/.ssh/known_hosts
chmod 700 /root/.ssh
chmod -R 600 /root/.ssh/
chmod -R 600 /root/.ssh/id_rsa
chmod -R 644 /root/.ssh/id_rsa.pub
cat /root/.ssh/known_hosts
cat  /root/.ssh/config
