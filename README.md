# README

Running Amazon Linux 2 as a Virtual Machine On-Premises
(VirtualBox)

#### Getting started

1. Use the provided [/seedconfig/seed.iso](/seedconfig/seed.iso), or create your own, e.g
   ```
   # Run
   $ genisoimage -output seed.iso -volid cidata -joliet -rock user-data meta-data
   # OR
   $ hdiutil makehybrid -o seed.iso -hfs -joliet -iso -default-volume-name cidata ./
   ```
2. Download [latest VirtualBox VDI image](https://cdn.amazonlinux.com/os-images/latest/virtualbox/)
3. Create new VM in VirtualBox, attach the downloaded VDI file along with the seed.iso file
4. After you have customized the VM env to your liking, export it as a vagrant box:
   ```
   # Run
   $ vagrant package --base my-virtual-machine-name --output amzn2-vagrant.box
   ```
5. Add the newly created box to vagrant:
   ```
   # Run
   $ vagrant box add amzn2-vagrant amzn2-vagrant.box
   ```
6. At this point all is ready to spin-up the new VM, see [vagrant init](https://www.vagrantup.com/docs/cli/init.html) and [vagrant up](https://www.vagrantup.com/docs/cli/up.html) for more info 
7. Install [VirtualBox Guest Additions](https://github.com/dotless-de/vagrant-vbguest)
