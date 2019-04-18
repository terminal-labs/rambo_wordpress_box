mkdir ~/.ssh/ && echo -e "Host github.com\n\tStrictHostKeyChecking no\n" > ~/.ssh/config
git clone -b develop https://github.com/pallets/flask.git
cd flask



mkdir -p  ~/.ssh
echo -e "Host github.com\n\tStrictHostKeyChecking no\n\tFingerprintHash sha256\n" >  ~/.ssh/config
chmod 600  ~/.ssh
ssh-keyscan rsa github.com >>  ~/.ssh/known_hosts
ssh-keyscan github.com >> ~/.ssh/known_hosts
cat ~/.ssh/known_hosts
cat  ~/.ssh/config
