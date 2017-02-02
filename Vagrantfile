VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  if Vagrant.has_plugin?("vagrant-hosts")
    config.vm.provision :hosts do |provisioner|
      provisioner.add_localhost_hostnames = false
      provisioner.autoconfigure = true
      provisioner.sync_hosts = true
      provisioner.add_host '192.168.10.11', ['chaordictestes']
    end
  end
  config.vm.box = "bento/ubuntu-16.04"
  config.vm.define "chaordicteste" do |chaordicteste|
    chaordicteste.vm.hostname = "chaordicteste.lab"
    chaordicteste.vm.network :private_network, ip: "192.168.10.11"
    chaordicteste.vm.provider "virtualbox" do |v|
      v.customize [ "modifyvm", :id, "--cpus", "2" ]
      v.customize [ "modifyvm", :id, "--memory", "2048" ]
      v.customize [ "modifyvm", :id, "--name", "chaordicteste.lab" ]
    end
  end

end
