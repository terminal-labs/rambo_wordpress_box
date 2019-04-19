useradd -m vagrant
mkdir -p /home/vagrant
touch /home/vagrant/.bashrc

sed -i 's/^#\s*\(%wheel\s*ALL=(ALL)\s*NOPASSWD:\s*ALL\)/\1/' /etc/sudoers

mkdir -p /vagrant
cp -a /home/circleci/repo/. /vagrant/
