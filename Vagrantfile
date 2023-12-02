Vagrant.configure("2") do |config|
  config.vm.box = "rockylinux/9"
  config.vm.box_version = "2"
  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.network "private_network", ip: "10.255.0.10"
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "2048"
  end
  config.vm.synced_folder ".", "/vagrant", disabled: true

  config.vm.provision "Configure repos",
    type: "shell",
    path: "scripts/configure_repos.sh",
    env: {
      "ROCKY_RELEASEVER" => "9.2",
      "ROCKY_CONTENTDIR" => "vault/rocky",
    }
  config.vm.provision "Configure SELinux", type: "shell", path: "scripts/configure_selinux.sh"
  config.vm.provision "Configure hostname",
    type: "shell",
    path: "scripts/configure_hostname.sh",
    env: {
      "ROCKY_HOSTNAME" => "ipa.localhost",
    }
  config.vm.provision "Configure hosts file",
    type: "shell",
    path: "scripts/configure_hosts.sh",
    env: {
      "HOSTS_IP" => "10.255.0.10",
      "HOSTS_DOMAIN" => "ipa.localhost",
    }
  config.vm.provision "Configure timezone",
    type: "shell",
    path: "scripts/configure_timezone.sh",
    env: {
      "TIMEZONE" => "Europe/Belgrade",
    }
  config.vm.provision "Configure firewall", type: "shell", path: "scripts/configure_firewall.sh"
  config.vm.provision "Install FreeIPA", type: "shell", path: "scripts/install_freeipa.sh"
  config.vm.provision "Configure motd", type: "shell", path: "scripts/configure_motd.sh"
end
