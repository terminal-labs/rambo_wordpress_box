help:
	@echo "usage: make [command]"

download_python_environment_manager:
	@if test ! -d ".tmp/python-environment-manager-master";then \
	        sudo apt install -y wget unzip; \
		sudo rm -rf maintenance; \
		sudo su -m $(SUDO_USER) -c "mkdir -p .tmp"; \
		sudo su -m $(SUDO_USER) -c "cd .tmp; wget https://github.com/terminal-labs/python-environment-manager/archive/master.zip"; \
		sudo su -m $(SUDO_USER) -c "cd .tmp; unzip -qq master.zip"; \
	fi

create: download_python_environment_manager
	@vagrant up
	@vagrant ssh --command 'cd /vagrant; sudo bash .tmp/python-environment-manager-master/maintenance/vagrant_saltstates/install_deps.sh'
	@vagrant ssh --command 'cd /vagrant; sudo bash .tmp/python-environment-manager-master/maintenance/vagrant_saltstates/install_salt_open.sh'
	@vagrant ssh --command 'cd /vagrant; sudo bash .tmp/python-environment-manager-master/maintenance/vagrant_saltstates/run_salt.sh'
	@vagrant ssh --command 'cd /vagrant; sudo bash .tmp/python-environment-manager-master/maintenance/vagrant_saltstates/test.sh'
