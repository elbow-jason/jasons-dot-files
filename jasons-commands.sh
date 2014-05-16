echo GET USER INFO FOR SETUP;
echo;
read -p "ENTER YOUR NAME: " users_name ;
read -p "ENTER YOUR GITHUB EMAIL: " github_email ;

echo CREATE ALL THE DIRECTORIES;
cd ~;
mkdir ~/Workspace;
mkdir ~/extras;
mkdir ~/extras/Programs;
mkdir ~/.ssh;

echo UPGRADE ALL THE THINGS
sudo apt-get upgrade;

echo GET GPARTED FOR PARTITION ALTERATION;
sudo apt-get install gparted;

echo GET FISH SHELL FOR GREAT JUSTICE;
sudo apt-add-repository ppa:fish-shell/release-2; sudo apt-get update; sudo apt-get install fish;

echo GET CHROME;
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list';
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -;
sudo apt-get update;
sudo apt-get install google-chrome-stable;
sudo rm /etc/apt/sources.list.d/google-chrome.list;

echo GET NETFLIX FOR LINUX
echo IT IS LARGER THAN 300MB
sudo apt-add-repository ppa:ehoover/compholio;
sudo apt-get update;
sudo apt-get install netflix-desktop;

echo GET SHUTTER FOR TAKING SCREENSHOTS (a lot like snippet);
sudo apt-get shutter;

echo DEV STUFF FOLLOWS;

echo GET GIT;
sudo apt-get install git;

echo SETUP GIT SSH;
cd ~/.ssh

ssh-keygen -t rsa -C $github_email;
ssh-add ~/.ssh/id_rsa; 
sudo apt-get install xclip; 

xclip -sel clip < ~/.ssh/id_rsa.pub;
read -p "GO TO GITHUB.COM -> ACCOUNT SETTING-> SSH KEYS -> ADD SSH KEY... type a title and them paste into the field. (the ssh key is already copied. JUST EFFING PASTE then <PRESS ENTER> when done.";
ssh -T git@github.com;
git config --global user.email $github_email
git config --global user.name $users_name

echo GET ALL THE NODEJSEZ; 
cd ~/Workspace/; 
git clone git://github.com/ry/node.git ;
cd node; 
./configure; 
make; 
sudo make install;



echo GET RUBY;
echo;
sudo apt-get install curl; \curl -sSL https://get.rvm.io | bash; rvm install 2.1.1; sudo gem install bundle;

echo GET SUBLIME TEXT 3;
sudo add-apt-repository ppa:webupd8team/sublime-text-3;
sudo apt-get update;
sudo apt-get install sublime-text-installer; 




sudo apt-get install python-pip; 
sudo apt-get install phantomjs









