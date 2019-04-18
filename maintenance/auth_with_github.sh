mkdir -p  /home/circleci/.ssh
echo -e "Host github.com\n\tStrictHostKeyChecking no\n\tUserKnownHostsFile /dev/null\n" >  /home/circleci/.ssh/config
chmod 600  /home/circleci/.ssh
ssh-keyscan -Ht rsa github.com >>  /home/circleci/.ssh/known_hosts
cat  /home/circleci/.ssh/config
