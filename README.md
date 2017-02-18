# nodestable.vagrant
Setup Vagrant box for node project with stable nodejs

Few simple steps to setup a brand new nodejs project with sailsjs inside of a vagrant box.

What you need to do is, follow all below mentioned steps one by one.

run "sudu su" to be the root user of your local machine. Then go for Step 1.

Step 1. Clone this repo to you desired location to your local machine

I expect you have a local environment with Ubuntu 14.04 64 bit and also virtualisation is enabled from your BIOS setup.

If virtualisation not enabled then I suggest you to enable virtualisation from your BIOS setup first.

?? Don't know how to do it? Ok no issue. Follow respective steps.
	i. Restart your local machine and press f12 key to enter your BIOS setup.
	ii. Now go for edit settings.
	iii. Go for advanced tab
	iv. Enable virtualisation
	v. Save and exit.
	
	Done folks! Your virtualisation is enabled now.
If you are on lower or upper virsion of Ubuntu 14.04 and if not having 64 bit os then I suggest you to change the virtual box configuration first by modifying the Vagrantfile.

Now if all things are fine till now the move for step 2

2) Checkout to 'dev' branch

3) Run 'vagrant up' from terminal

If you are not getting any error till here then go for next step. Otherwise contact me.

4) run 'vagrant ssh'

Now you are inside of your vagrant box. So go for next step.

5) cd /var/www/html/installation (this folder path you can specify inside of the Vagrantfile, to the sync folder configuration)

6) ./lift.sh

You are done Folks! Now you can see that the whole new sails project is up and running on default port 1337 for your vagrant box also for your local machine.

If you are getting issue with the port number as they are busy with some other task the modify the app configuration file for default port modification and also modify the Vagrantfile forward_port configuration file or only modify the vagrantfile configuration.

Now if you are not getting any issue and your project is running on port 1337 then visit http://127.0.01:1337 in your local machine. You'll get the default index page of sailsjs application.

**Note**

Don't forget to do vagrant reload if you are modifying any configuration inside of your Vagrantfile.

If you want to recreate the vagrant box then run vagrant destroy and then run vagrant up

Thanks for reading this file and following all the instruction properly.

To keep the server up and running don't close your vagrant window or terminal. If closed then to run your server again go to your project folder from your terminal and run 'sails lift'. It'll restart the server.
