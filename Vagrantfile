BOX = "debian/bookworm64"

Vagrant.configure("2") do |config|

	config.vm.box = BOX

	config.vm.provider "virtualbox" do |v|
        
	end

	config.ssh.forward_agent = true

	config.vm.synced_folder "./conf", "/home/vagrant/conf", type: "rsync"

	config.vm.provision "shell", path: "./scripts/setup.sh"

end