# Fast FreeSWITCH

We use Vagrant to kick this whole thing off. So, get this repo downloaded to the HOST build machine (again, Win, Mac, or Lin).


##### STEP #1 Install Vagrant

First, you'll need to [install Vargrant](https://www.vagrantup.com/downloads.html) on your host box.


##### STEP #2 Install Git & Clone Repo

Now we'll need to [install git](https://git-scm.com/downloads) so we can clone this repos.

    # Clone the Fast FreeSWITCH code.
    git clone https://github.com/gabegundy/fast-freeswitch.git


##### STEP #3 Configuring and Running Vagrant

Let's bring the box up. This might take a minute or two depending on your bandwidth and hardware. The first time will take a little longer than the following times.

    # And now we simply let vagrant create our box and bring it up. 
    vagrant up

Once the box is up and running, it should then start installing FreeSWITCH for us.

    # When the box has been installed we can get access via ssh.
    # (No need for passwords, Vagrant installs the keys we'll need.)
    vagrant ssh

If the box gets updated by the folks at HashiCorp, we'll want to update our copy too.
    # This only needs done once and a while.
    vagrant box update

Congratulations! You've now connected to a fresh install of Debian Jesse and a freshly installed FreeSWITCH.

Wrap up your vagrant box when no longer needed (log out of the guest before running these commands on the *host* system):

    # Shutdown, but leave the box around for more building at a later time:
    vagrant halt

    # Trash the box and remove all the related storage devices.
    vagrant destroy
