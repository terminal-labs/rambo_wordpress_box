wget -O bootstrap-salt.sh https://bootstrap.saltstack.com
chmod +x bootstrap-salt.sh
yes | ./bootstrap-salt.sh -P -X -I -l -f -g https://github.com/saltstack/salt.git git v2018.3.4
rm bootstrap-salt.sh
