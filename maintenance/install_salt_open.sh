wget -O bootstrap-salt.sh https://bootstrap.saltstack.com
sh bootstrap-salt.sh -P -X -g https://github.com/saltstack/salt.git git v2018.3.4
rm bootstrap-salt.sh
