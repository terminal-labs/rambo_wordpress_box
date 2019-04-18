mkdir -p  ~/.ssh
echo -e "Host github.com\n\tStrictHostKeyChecking no\n\tFingerprintHash sha256\n\tUserKnownHostsFile /dev/null\n" >  ~/.ssh/config
chmod 600  ~/.ssh
ssh-keyscan -Ht rsa github.com >>  ~/.ssh/known_hosts
cat  ~/.ssh/config
