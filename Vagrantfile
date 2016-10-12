Vagrant.configure(2) do |config|
  config.vm.define "k8s1" do |k8s1|
    k8s1.vm.box = "ubuntu/xenial64" 
    k8s1.vm.hostname = "ubuntu"
    k8s1.vm.network "private_network", ip: "192.168.50.100"
    k8s1.vm.provision :shell, path: "provisioner.sh"
  end

  config.vm.define "k8s2" do |k8s2|
    k8s2.vm.box = "ubuntu/xenial64" 
    k8s2.vm.hostname = "k8s2"
    k8s2.vm.network "private_network", ip: "192.168.50.101"
    k8s2.vm.provision :shell, path: "provisioner.sh"
  end

  config.vm.define "node1" do |node1|
    node1.vm.box = "ubuntu/xenial64" 
    node1.vm.hostname = "centos"
    node1.vm.network "private_network", ip: "192.168.50.200"
    node1.vm.provision :shell, path: "provisioner.sh"
  end

  config.vm.define "node2" do |node2|
    node2.vm.box = "ubuntu/xenial64" 
    node2.vm.hostname = "node2"
    node2.vm.network "private_network", ip: "192.168.50.201"
    node2.vm.provision :shell, path: "provisioner.sh"
  end
end


