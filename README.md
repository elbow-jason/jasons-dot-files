jason-s-post-reinstall-commands
===============================
a little python file AND a shell script of all commands I run after reinstalling my entire OS.
I currently use Linux Mint:

`$ cat /etc/*-release
DISTRIB_ID=LinuxMint
DISTRIB_RELEASE=16
DISTRIB_CODENAME=petra
DISTRIB_DESCRIPTION="Linux Mint 16 Petra"
NAME="Ubuntu"
VERSION="13.10, Saucy Salamander"
ID=ubuntu
ID_LIKE=debian
PRETTY_NAME="Ubuntu 13.10"
VERSION_ID="13.10"
HOME_URL="http://www.ubuntu.com/"
SUPPORT_URL="http://help.ubuntu.com/"
BUG_REPORT_URL="http://bugs.launchpad.net/ubuntu/"`


use:
---------
1. copy 'doit.sh' text from the github raw
1. save it as doit.sh
1. run doit.sh
1. enter your name at the prompt
1. enter your github email at the prompt
1. enter your sudo pw at the prompt(s)
1. follow all the prompts!
1. wait for a long time...


what I do:
---------
I add a command to jasons-commands.sh when I want to use it after a reinstall.
To produce doit.sh, I run `$ python conkat.py` before I push.


what conkat.py does:
-----------
conkat.py removes '\n' (newlines) from jasons-commands.sh and saves the altered text in doit.sh

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
	+ sublime text 3        (i like the color and the autocomplete best)
	+ python-pip			(python does not work without pip. DONT LIE TO YOURSELF.)
	+ phantomjs				(from a repo so i takes 1/100000th the time to install)

* configures	(assuming you entered your the info correctly):
	+ git               	(generates and saves local SSH key and sets up git globals)