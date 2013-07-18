Vagrant.configure("2") do |config|
  config.vm.box = "node"
  config.vm.box_url = "http://files.vagrantup.com/precise32.box"

  config.vm.network :forwarded_port, guest: 3000, host: 3000
  config.vm.network :forwarded_port, guest: 8080, host: 8080

  config.vm.network :private_network, ip: "10.10.10.10"

  # Uncomment the following code to share a local folder
  # config.vm.synced_folder "../app", "/home/vagrant/app"

  # Uncomment the following section to allow for symlinks
  # in the app folder. This will not work on Windows, and will
  # not work with Vagrant providers other than VirtualBox

  config.vm.provider :virtualbox do |vb|
    vb.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/tesla", "1"]
  end

  config.vm.provision :chef_solo do |chef|
    chef.add_recipe "build-essential"
    chef.add_recipe "nodejs"
    chef.add_recipe "timezone-ii"
    chef.add_recipe "mongodb-debs"
    chef.add_recipe "redis-server"
    chef.add_recipe "git"
    chef.add_recipe "utilities"
    chef.json = {
      "nodejs" => {
        "version" => "0.10.13"
      }
    }
  end
end
