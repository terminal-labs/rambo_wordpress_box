ssh-keygen -F github.com || ssh-keyscan github.com >>~/.ssh/known_hosts
wget -O bootstrap-salt.sh https://bootstrap.saltstack.com
sudo sh bootstrap-salt.sh -P -X git v2018.3.4
sudo rm bootstrap-salt.sh
