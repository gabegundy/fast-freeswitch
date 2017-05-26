# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

    # What box should we base this build on?
    config.vm.box = "debian/jessie64"

    # The bridge string has to match exactly for it to work.
    config.vm.network "public_network", bridge: "en0: Wi-Fi (AirPort)"

    config.vm.provider "virtualbox" do |vb|
        vb.name = "Fast FreeSWITCH"
        vb.gui = true

        # Tweak these to fit your needs.
        vb.memory = "8192"
        vb.cpus = "4"
    end

    config.vm.provision "shell", path: "install.sh"

end
