USER=$(/usr/bin/id -run)

mkdir -p /vagrant
cp -a /home/"$USER"/repo/. /vagrant/
