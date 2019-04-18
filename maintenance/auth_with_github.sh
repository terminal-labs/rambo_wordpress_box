mkdir -p  ~/.ssh
echo -e "Host github.com\n\tStrictHostKeyChecking no\n\tFingerprintHash sha256\n\tUserKnownHostsFile=/dev/null\n" >  /etc/ssh/ssh_config
chmod 600  ~/.ssh
ssh-keyscan rsa github.com >>  ~/.ssh/known_hosts
ssh-keyscan github.com >> ~/.ssh/known_hosts
cat ~/.ssh/known_hosts
cat  ~/.ssh/config
git clone https://github.com/pallets/flask.git
