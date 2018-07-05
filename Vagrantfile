# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "jesse"
  config.vm.box = "debian/jessie64"

  config.vm.provision :salt do |salt|
    salt.bootstrap_options = "-P"
	  salt.verbose = true
  end

  config.vm.provision "shell", inline: "sudo cp /etc/salt/minion{,-dist} && sudo cp /vagrant/salt/minion /etc/salt/minion && sudo salt-call --local state.highstate"

  config.vm.network :forwarded_port, :guest => 8080, :host => 8080, auto_correct: true
  config.ssh.forward_agent = true

end
