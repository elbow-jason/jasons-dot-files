jason-s-post-reinstall-commands
===============================
a little python file AND a shell script of all commands I run after reinstalling. 


Use:
---------
1. copy 'doit.sh' text from the github raw
2. save it as doit.sh
3. run doit.sh
4. enter your name at the prompt
5. enter your github email at the prompt
6. enter your sudo pw at the prompt
7. wait for a long time...


what I do:
---------
I add commands to jasons-commands.txt when I want to use it again later.
To produce doit.sh, I run `python conkat.py` before I push.


what conkat.py do:
-----------
conkat.py removes '\n' (newlines) from jasons-commands.txt and saves the altered text in doit.sh

this shell script...
----------------
* takes some necessary use input:
* creates directories:
    ~/.ssh
    ~/Workspace
    ~/extras
    ~/extras/Programs/    (node goes in here)
*installs:
	-git  					(for version control and open source deving)
	-google chrome			(a browser of interwebs)
	-gparted 				(for partitioning harddrives)
	-netflix-desktop		(it's very large >300MB, but it works well)
	-shutter				(for taking screenshots)
	-fish shell				(best darn shell from the 90s)
	-nodejs					(it's like chrome without the browser)
	-rvm 					(changes 'usage' ever 10 days, wants to be different)
	-ruby					(the thing rails uses to practically build itself)
	-sublime text 3         (i like the color and the autocomplete best)
	-python-pip				(python does not work without pip. DONT LIE TO YOURSELF.)
	-phantomjs				(from a repo so i takes 1/100000th the time to install)
*configures	(assuming you entered your stuff correctly):
	-git               		(generates and saves local SSH key and sets up git globals)