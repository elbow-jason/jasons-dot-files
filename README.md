fresh-mint-install
===============================
A shell script of all commands I run after reinstalling my entire OS.

Powered by a small python script.


info:
--------
+ I currently use Linux Mint 16 Petra 64-bit (Ubuntu 13.10, Saucy Salamander).
+ caveat 1: I have yet to try the script. Will do soon.
+ caveat 2: one must still configure git remotes to auto-push and such; this script simply sets up the local ssh key and prompts the user to add the key to their github account settings. 


use:
---------
1. copy 'doit.sh' text from the github raw (right click "Save As..")
1. save it as doit.sh
1. `$ sudo sh doit.sh`
1. enter your name at the prompt
1. enter your github email at the prompt
1. enter your sudo pw at the prompt(s)
1. follow all the prompts!
1. wait for a long time...


what I do:
---------
+ I add a command to jasons-commands.sh when I want to use it after a reinstall.
+ To produce doit.sh, I run `$ python conkat.py` before I push.


what conkat.py does:
-----------
+ conkat.py removes '\n' (newlines) from jasons-commands.sh and saves the altered text in doit.sh (it's only 7 lines of working code)

this shell script...
----------------
* takes some necessary use input:
	+ your password (it's for sudo)
	+ your github.com associated email
	+ your github.com name

* creates directories:
    + ~/.ssh
    + ~/Workspace
    + ~/extras
    + ~/extras/Programs/    (node goes in here)

* installs:
	+ git  					(for version control and open source deving)
	+ google chrome			(a browser of interwebs)
	+ gparted 				(for partitioning harddrives)
	+ netflix-desktop		(it's very large >300MB, but it works well)
	+ shutter				(for taking screenshots)
	+ fish shell			(best darn shell from the 90s)
	+ nodejs				(it's like chrome without the browser)
	+ rvm 					(changes 'usage' ever 10 days, wants to be different)
	+ ruby					(the thing rails uses to practically build itself)
		+ pry 				(ruby debugger causes a breakpoint in the execution of ruby)
		+ bundle			(for packaging a ruby project's gem dependecies)
	+ sublime text 3        (i like the color and the autocomplete best)
	+ python-pip			(python does not work without pip. DONT LIE TO YOURSELF.)
		+ ipython			(the best python package ever. EVER.)
		+ ipython notebook	(the best way to learn python)

	+ phantomjs				(from a repo so it takes 1/100000th the time to install)

* configures (assuming you entered your the info correctly):
	+ git               	(generates and saves local SSH key and sets up git globals)


My OS Version
------
running

> `$ cat /etc/*-release` 

 produces the following:

> DISTRIB_ID=LinuxMint

> DISTRIB_RELEASE=16

> DISTRIB_CODENAME=petra

> DISTRIB_DESCRIPTION="Linux Mint 16 Petra"

> NAME="Ubuntu"

> VERSION="13.10, Saucy Salamander"

> ID=ubuntu

> ID_LIKE=debian

> PRETTY_NAME="Ubuntu 13.10"

> VERSION_ID="13.10"

> HOME_URL="http://www.ubuntu.com/"

> SUPPORT_URL="http://help.ubuntu.com/"

> BUG_REPORT_URL="http://bugs.launchpad.net/ubuntu/"