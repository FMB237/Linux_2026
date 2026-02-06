# This is a Simple Udemy Course to learn how to install used Linux in 2026 from scarth

Author :Fouenang Miguel Bruce
Address: miguelfouenanf@gmail.com or bfouenang237@gmail.com

Generally we need to install some tools depending the Os we are using if using Windows then we will need to install virtualization softwares
# 1.Virtulisation
What is Vitualization ?
This is the process and installing an Os in a virtual machine  using a virtualization software for working or studing proposes
Some example of virtulization software are 
1. The popular Virtualbox which is free and open source 
2. The proffessional VMware mostly uses by enterprise and some costy
3. Virt-manager which is a Linux base alternative mainly use for Cloud computing and mainly others

# 2.VirtualBox
To create a virtual machine we need this software and an ISO image of the Os we have to install and this images can be get directly from the official website
Like if we want to install Ubuntu we only need to downlaod an UBUNTU LTS image directly from the website the same for linux mint,Fedora and other free linux systems

Follows mainly the Installations Process and i will easy to to that

# Note the that on linux we can install a Vm to not mix up the data with our host machine 
So always remember that a Vm is a seperate Systeme from the host machine with it own ip and configs 
In network energineering we generally set up this remote Vm in the same Network with our host machine for better communications.
In Software like  virtuabox can  we easily share files from our host machine to our VM using the guest additions which permit to change a directory that links the file between the 2 machines
# Lesson2: After Linux have been install we need to learn some terminal tricks and Tip
So open a terminal GNOME Terminal on Ubuntu,XCFE terminal in XCFE Env

# Some  important linux commands
1.clear :Used to clear up data or informations in our terminal
2.CTRL + L : Used to view all the previous commands been written in the terminal
3.CRTL + U :Used to clear the linux in a terminal from the left and CRTL + K  have the same function but now from the right
4.Reset : Used to reset terminal when it crashes

# We can used the command whatis <commandname> to Ash the terminal the meaning of a particualr commands
As a developper I'm thinking of doing all this using a bash script
So for better understanding just run the script
Note the history command give us the history of about 700 pass commands we have written on our machines
all the commands that appears due to the history command have a number and this commands can be used using the ! + command_id
# ! + command_number 
where command number is the number corresponding to the command
We can search for a command in the command history using the combo :
# CRTL +R 

# Lesson 3 : Basic naviagtion commands
Okay let start with command pwd(Where i'm i ?)
1.cd  <directory>:Change directory
2.cd .. :Return to the previous directory 
3.cd return to the home directory 
4.cd ~ <directory> : Absolute path 
5.ls: list the files inside a directory 
6.ls -a view all files in the directoty when the hided files
7.ls -l give us a table view of the files inside a directory and also give the ownerships of each file inside a directory

Note we do not need to enter a directory to know which files and types of files that are inside this files 
So this can be done from outside like  ls /Download

# Lesson 4 : Creating file and Folder
To create folders in linux we used the commands
mkdir <name> example :mkdir linux_course
This will create a new folder with name linux_course
we can create many folders like that as same time 
mkdir folder1 folder2 folder3
to remove all of them used the command 
rmdir folder1 folder2 folder3 

Folders can be create with hierachy using the / commands like 
# mkdir 1/2/3 -p this will create a hierachy folders 
So this will create a principal folder 1 with folder 2 inside folder 1 and folder 3 inside folder 2 
So want a hierachy folder creation.
# NOW let install tree which will permit us to use the commands in a hierachy way 
So this gonna help us the draw the struture of the files and folder in a system
Now always make sure we create a folder in a specific locations 
if you does not adminstrative right used the sudo command 
# sudo mkdir ~/Myfolder

# In linux can create a file using mainly to methods that the touch command and the echo command

e.g touch hello.txt which will  create and empty file with the name touch.txt
e.g echo > echo.txt  which will also create a  file with name echo
# Note something very important in linux compare to windows is that linux does not mainly cares about files extensions 
So a file with no name extension on linux will be used without any problem 
We can also used the cat command to create a file
# e.g cat >info.txt Hey Bro are okay 


# Lesson 5 : Basic file operations

Here we talk about operations like files copying mainly used on server by passing the through the terminal that is 
moving files into our server from one directory to another.
Let create a new file and copy it inside the 1/2 folder
Now the Bruce.txt file is in the 2 Folder with the 3 folder
# So to copy we used the command cp 
# Like cp Bruce.txt 1/2
Now we can used the tree the command to observe all the files into our project folder
Now let copy all files using the star "*" into another directory
# Exemple cp * hello 1/2/3
Use to copy all the files with the name hello into folder3.

Now let move on our files for moving files we used the command  mv 
# Exemple mv hello.txt 1 
This will move the hello.txt file into the directory named 1  and we can also used the mv to rename files 
# Exemple mv echo echo.txt

The rm command is used to delete file 
# Exemple rm hello.txt
to remove a folder used the command rmdir 
To remove  a folder with file inside that is forcing delect mainly we used the command 
# Exemple rm M* -r 
I use it to delect me Miguel Folder

# Finally  Never use the command rm -rf/
And all file delected from the console do not goes to the trash can.


# Lesson 6 :Viewing Files
For this lesson i added a file that is a small from the course name like Romeo+and+Juliet+poem.txt
The wget help us to download files directly using the terminal and a URL 
# wget http://url_name
Let learn how to view file small small on our terminal 
# more filename
Using more -10 will output the file contain from the -10 line 
and using more +150 will output the file contain from the 150 line 
This option can be combien like using 
# more +150 -25 filename
We can even used more to search words inside our files
more -s Dog filename
Using the less command 
It almost functions as the more command
# Using  the less command for search we use the folloing procedure
# less -p "Word" filename
We can fine Romeo with 
# less -p "Romeo" Romeo+and+Juliet+poem.txt


We also have the head and tail commands used to view only last lines and first lines of our files

# Exemple head filename
tail  -1 packages.sh 
head -3 package.sh

# Lesson 7: let drive into linux text editors
On like default windows simple text editor linux also have it default text editor which is genrally already install in 
# What is Vim
But personal i prefer nano and i more fast with nano which is another linux test editor
to exit vim with use the command :q while to exit vim with used the command :wq
Note : Vim has almost replace Vim on all modern linux distros due to it simplecity.

# Vim has many modes
1. Command Mode
2. Normal mode 
3. Insert mode
we switch between this modes using the escape key on our keyboard
Generally we exit file by making changes on them on vim using the command :wq but if we do not have to save any change we will used the command  :q!
When the ! means not 
In Vim we can also move on cursor on vim using so short cut commands

On like almost all text editors vim supports search which can be done using the "/ key" type the word search and used  the key 'n' from our keyboard to continue the search inside the file
We can add some git functions to Vim and customise it to me a full IDE but that mainly for old schools guys.

# Lesson 8 : Vimtutor 
type vimtutor after installing vim-runtime and we will get a small tuto that will permit to learn how to use vim 
Go through the documententation and Upgrade your vim skills

# Lesson 9 : nano text editor
to launch nano type the followingn nano filename 
Example nano Bruce.txt
To save in nano we used "CRTL + S" and to Write over you used the key "CRTL + O" to exit editor we used the keys "CRTL +X"

With nano we can Create a Backup file of our create file using the command 
# nano -B or nano filename -B
I Created file we name Bruce.txt with it backup .
The backup will store files gradually 
nano text editor also allows us to copy files within the terminal using the follwoing set of commands
Need to improve my nano skills 


# Lesson 10 : Folder Structure
Now let learn how files are been stuture in the linux operating system
In linux we have directories that can only be access by the root user (Super User)
Into the bin directory we can find alot of scripts that are important for our system
The boot directoty is a directoty that contains all the essential tools to premit the system to boot 
Generally we can drive into almost all this directories like home directory which store all our files
Lib Directory  which all the system libraries.
The opt directory is used for additional files that means i can stores other file and system features
The Proc contain files  and logs processes.
The root is mainly for the root user 
The tmp folder store temporal file so files in it are not save and lose when PC is been restarted.
Usr directory stores users
Crash directoty store crash and logs

# Use the df command to show the file and df -h to show more informations like File weight
and  also the df -hT / To show our disk space

Now let chech the utility call du
# du = Disk Usage
du ~ .s
# Using the command du ~ .s to show all files into your pc 
We can also used the command du ~ .sh but with a big system this will almost take on all the resources.
We can even exclude files we have to use or to read like excluding file types.

# Now let move to tar files which is a way of compressing files like zip but bascially intergrated for linux
Let create an archive of the Romeo.txt file 
# tar -cf romeo.tar.gz Romeo+and+Juliet+poem.txt  
to create a Tar archive of the Romeo+and+Juliet+poem.txt
# Let now compress our tar file   with something like : tar -zcf romeo-zip.tar.gz Romeo+and+Juliet+poem.txt 
We will observe that the file is now 3 times smaller than the original one .
Let Create a backup_text folder an move our tar to it .
We can also use the following set of commands to extrait files using the tar 
# tar -xf filename to extract 
We can also used zip  to work with archive 
the systax is simple that 
# zip filename and unzip filename


# Lesson 11 : Find commands
Generally on linux the first command we used to find a file using the termainal is the find command
# find filename or find filenane* 
Always specified the extension of the file we wanna find.
# exemple find * .txt
We can find the exact size of a file to search 
# example find -size +10k or find -size 100k or find -size 10M

# Lesson 12 : Getting user info 
Let help how to get user informations in linux
First command to used is the whoami command to ask to the system which user you are actually 
We also have the command groups to show the groups  user information and id
# So we have whoami, id, groups
We can switch from up user to another using the su 'Username' command
Using sudo su to swicth to superuser In root mode we can clearly seen that we have the user in ending with  '#' while simple users have only a $ symbol

# Sudo su to switch to root mode
Now let checkout the current infos about the current user
Hey we talk about UID and GID
UID: user identification
GID : group Identification


# Lesson 13 : User Creation
In linux User creations is a very simple task and we have look the doc on it by using the command
# useradd --help
Note that the use of upper and lower case letters in linux are very important and respected 
we can do the following from the doc
-d, --home-dir HOME_DIR       home directory of the new account
-G, --groups GROUPS           list of supplementary groups of the new account
-s, --shell SHELL             login shell of the new account
-u, --uid UID                 user ID of the new account
-U, --user-group              create a group with the same name as the user

# So let now create a newusers
using the command 
# sudo useradd name 
e.g sudo useradd miguel -m 
and also create a user that can access the shell
sudo useradd Fouenang -m -d /home/FMB237 -s /bin/bash

Beside the useradd we also have the adduser command
# adduser Bruce123 
Which is a more specific command which permit to provide more informations about the user we are creating on liunx
# sudo adduser Bruce123
With adduser we can more security.
We can delect this users using the command deluser <username>
In linux we have mainly many types of users 
1. The Root mainly call the superUser
2. The normal user 
3. The clients
4. The daemon users (Only for running severes like ssh user the id is from 1 to 4096)
 
# Lesson 14 : Change Users
# To check up user change we can use the command usermod
 Use the Usermod  change our user properties so we can used this commands to block a user and modified the user accounts
 # sudo usermod -L username 
 And this does not tells the user he or she is block
 to unblock our user we used the command 
 # sudo usermod -U username
 How let change the user home directory  using the command
 sudo usermod -d /home/newusername


# Lesson 15 :  Root Privelges and User delections
In linux can use the root privelges using the command sudo But only if the user is in the root group 
We use the command whoami to know which user we are actually delecting with and alos the command 
# groups <username> to know to which groups belongs our actual user
Example using groups bruce we have the following output 
bruce : bruce adm dialout cdrom sudo dip plugdev users kvm lpadmin sambashare ubridge libvirt wireshark docker
Since bruce belongs to the sudo group,docker and other it have the privelge to access this groups functions.
To add a user in another group we use the command 
# sudo usermod -a G sudo "username"
We can remove this root right from the user using the following set of commands
# sudo deluser 'username' sudo 
Note all the rules can be edited from the files in our system

# Lesson 16 : Group Management
To Create Groups in linux the made command we can use is the command groupadd 
We can more information about that using the command groupadd --help
Let just add a new group like let add remote workers
# sudo groupadd remote_workers
Then use the command tail /etc/group to view if the new group was created
Now let add some users to our group 
sudo usermod -aG remote_workers  "username"
When we want to delect a group we simply use the groupdel command
# sudo groupdel remote_workers
Then use again the command tail /etc/group to see weather the added group was delected successfully .

# Lesson 17 :Getting Start with chmod commands
When we use the command ll will have some results that describe out files that is :  -rw-rw-r--  1
To which owner is the file,to the groups the file belongs and a code for Reading writing and other functions
r= Read Which give the ability to open a file
w= Write allows us to edit a file or directory
x= execute to run the file
# To change all this setting we use the tools knows as chmod commands
So chmod start for change mode
Use the command chmod --help to document on the use of the chmod command
Rememeber that to delect a folder we use the command rm  -r * 
Now let create a new file  to work with. 

 touch important_file -rw-rw-r-- This will the permissions of the file
 Then let change some permission led to this file
 # chmod o+w important_file.
After this command the file will have the following permissions -rw-rw-rw-
chmod go-rw 
To set permission to read and write to all the users and groups in our file we used the command 
# chmod a=rw *  or "filenanme"
to change this permission can also use digit 
# Lesson 18 : Changing File owners
This is still done using the chown(Change Owner Command)
The change owner is an admin(root) command so we always need to use it passing through the sudo command
# E.g sudo chown -R $USER:$USER "filename" 
This is mainly used to give privelge to a file by many other users.
other exemple can be sudo chown "groupname":"groupname" file
To change to which gropu belongs a particular file .
we can document on the change owner command using the chown --help command 

We can also change the group ownership using the command 
# sudo chgrp "Newgroup" .

# Lesson 19 :Special bit default permission 
Create 2 files to work with using the command 
touch public_excution &&   touch private_excutions
Which on we will configurate what mainly we need to the use of private and public mode files
With the public file the access will be granted by any user and group while with private file the access will be selective with users and groups
chmod u+x public_excution will make the public file  executable by any perso or group in our computer.
other command is chmod u+s *

Let talk about the sticky bit which prevent delection of some files to be delected 
It is added using the command chmod t .
Let talk about the unmask command 
We can view it doc using the command umask 


# Let Continue Leanring this course after a Break

# Lesson 20 :Links and INodes
let Use  the df -h command to check our disk space as seen the lesson up 
 IN Linux the  used of the in commabd is mainly for many purpose and links seem to be a very imporant issue
# To Create Links we used the ln command
Let create a file name main_config using the command
touch main_config.text
So let create link file using the ln command
# ln main_config.text link_config.next
This will create a link_config file 
Now let create a solve link  using the suffix "s" e.g
# ln -s main_config.txt softlink_config.txt 
If we look at the contain of all this files we gonna find the have the same contain.
Let add some addition informations to our main_config.txt and observer the behaviour of all the other linked files
We gonna observe that all the files have the same content but the original file is said to have the more weight than all the others aminly because of the multiple links to it .

Note bro i always better for me to create a soft link and hard link in other to avoid breaks and lose of data
If the original file is been delected then all of the links file will be delected 
Then if working on a server we can used the history command to vue all the command we used to avoid long ajustement and repetitions.
# Lesson 21 : Input && Output Stream 
In linux the terminal is mainly defined and consider as the  input and output device
Let talk about the cat command which permit to view the text inside a file it also fonctions as the more command
# cat filename
So with cat we can view the contain of multiple files at the same time using a single command
# cat file1 file2 file3
We can even send the output of our cat command into a single file 
# cat file1 file2 file3 > file
This will send the contain of all this files into a single file named file 4
We can also used the cat command to create and write inside a file 

# cat > filename 

# If we want to applied modifications to this file we use the command cat  >> filename
So that the previous contain of the file remains the same 
# Let remember the file command 
find  -name "*.txt"  or find -name "*.sh" 
Remember when using the history command we could ajust it like 
# history 25 or history 20 to only view the  20 or 25 pass commands we used

# Lesson 22 :Pipeline
 In other to start doing pipeline in Linux we gonna need to install a package now as pandoc
 # So we gonna have an installation like sudo apt install pandoc
 Pandoc is a utility program which have the capacity to convert files into differcent formats
 Let also get familia with wc  
 we can you the help for this command to view what is the main aim of this command and how it is been used.
 # wc --help
 So we used the  wc  filename 
 So this command permit us to know the number of lines in a file, it size and number of bytes
 # wc -l filename wc -c filename wc -w filename
 

 To use the pipeline in linux we use a vertical slash which is sepearating our text
 # Example cat   Romeo+and+Juliet+poem.txt | wc -l or wc -l  or wc -c Depending on what we what to display to our screen

Let try to pipe the result of the ls command 
# ls | wc -l or wc -w 
Both will pipe the ls command for displaying either the numbers od lines or bytes of our files inside our folder
Previously we saw the find command and how to use it but with can pipe it 
# example find -name "*.txt" | head -5 
To show all the txt 5 first text files in our folder 
If we can use find that maans we can also used the tails command
find -name "*.txt" | tail -5 

Now we can sort our files using the pipeline
find -name "*.txt" | head | sort 
find -name "*.txt" | head | sort |uniq
# find -name "*.txt" | head | sort |uniq | wc > line_text.txt
SO we can deside to store the results inside a file 

# Now let move on to the grep utility commands has as main aim to enable line search
So  let consider we want to find a particular word inside a File like in our Romeo+and+Juliet.txt 
We gonna used the grep and pass the word inside the pipeline

cat  Romeo+and+Juliet+poem.txt | grep "Romeo" | wc -l this is an example
The result will give us the numeber of  time Romeo  is been mention into our  text .
If we used the grep command  only  the file will be displayed with the selected grep text highlighted
cat  Romeo+and+Juliet+poem.txt | grep "Romeo" 
cat  Romeo+and+Juliet+poem.txt | grep "Romeo"  -o  For only showing the highlight words.
# This method is very useful for analyse logs in linux 
In linux the logs files are in the following location
 /var/log/syslog
 So we can pas the reasons of precise and particular analyse

cat /var/log/syslog | grep systemd 
cat /var/log/syslog | grep  cron 
cat /var/log/syslog | grep cron | grep root |
cat /var/log/syslog | grep cron | grep root | wc -l 
These are command pipelines
# Now le t discuss about the used of the echo command 
Let take the example of using the echo command which simplie display some text to our terminal then the used of the | will change everything
echo "Hello Bro"
echo "Hello Bro" && echo "It was the first of ferbuary 2026"

echo "Hello Bro" || echo "It was the first of ferbuary 2026"
This command will permit to execute the first command and check if is functional or correct then look after the second command
So i proeced set by sets So if the is an error in the first command the second command will execute if not it will not execute.
#  Example : head Romeo+and+Juliet+poem.txt || echo "Error Reading file"


# Lesson 23 : top utility (task manager) 
In Linux the management of resource is an essential tools and important aspect as linux is mostly used in servers
By default on our linux system we have the tool top which permit us to display our computer task manager and processes inside a terminal
top permit us to have a global view of all what is happening on out system to now which process does what and how to consume RAM  on our design
we also have some more advance tools like htop and btop for resource monitoring
So this tools permit to monitor processses and to have fully control on our resources if a process becomes harmful we can easily identified it  stop or kills it
# To launch all this we only need to enter top or htop or btop in our terminal depending on what we have installed
Processes are identified using the PID = process identification number
So we use the PID to stop on kill the process using it PID directly 
In linux i want a virtual RAM memory knows as swap memory which is mainly used when the RAM is suspense with processes So the swap memory is used to do some small tasks so that the RAM can focus on more importanc tasks.
# The Swap is a file written on the disk  so it uses the the disk the swap memory depends mainly on the RAM capacity and a machine have 
 what is the swap memory and how much swap can a machine have according to it actual RAM  ?? So is swap base on RAM or on user disk ??
 Personally i have 8gb RAM with 1tb HDD so i gonna increase me swap memory one day 
 This session have permit me to even increase me swap memory from 2gb to 12gb for me Computer to be more balance 
 And also using the top command and how to read processes on linux 
 In linux the first command process to be launch is the systemd 
 So i gonna try to display only the systemd process in mr terminal using the top command
 Using htop and top we can filter and find  process running inside our terminal and study their behaviour can we simply 
So by using the filter we can just kill the processes filter after on stop them 
# we can use sudo kill PID
Each user can only kills his own processes but that only applies to them and not to the root user which can kill any process when he wants.
# So we can use sudo top or sudo htop and kill any process 

# Lesson 24 :htop,ps,kill systemcli utilities
which htop we can even see the list of cpu cores at the top of our terminal
Htop is more modern than the top tool and very used today in server
Using the F1 to F10 keys can easily have functions step up on it which permit us to easily manage process on our terminal and it can customise 
Htop has a beautiful interface as compare to the classic top with color which permit us to easily differciante processes .
in htop we can deside which subprocess we want to terminate or kill form the bigger process like stoping subprocesses in firefox.
htop support mouse usage vertical and hortizontal scrolling 
When killing command we use always rely on the on the ps and kill command 
ps will give us informations about a specific process So ps is more static way of looking at our processes
The ps command can be used with the pipeline for accurate searchs and command precision.
# we gonna use kill PID to kill and specific process

let move on the pidof command 
Use to find the process ID of a running program 
since some programs generally runs with multiple processes like web browsers but we know that all the web pages inside a web browser are been consider as process of the general program which is the web browser itself.
# let move to the systemctl command 
the Systemctl has the roll to control the systemd system and service manager in our linux system 
using a pipe and systemctk we can know the number of processes we are running on our machine 
# example systemctl | wc -l 
This will list all the processes running on our machine  we can do the same for the number of  bit and some other processes
But we mostly used systemctl to manage particular serving like ssh or even database on our machine 
using the status command

# Example systemctl status ssh

We can also used systemctl to enable, start on even stop a serice on our machine 
# Example systemctl enable ssh,systemctl start ssh, systemctl stop ssh

We can  associate this command withe used of the sudo command to manage our servrice from the root directly .
We can also disable services using this process 
# sudo systemctl disable ssh,cron,docker

# Lesson 25 : apt/apt-gt utility
 This section is mainly about software managenlent utilities in liun and how we handle packets in our whole system
 In linux software are been refers and packages and this packages are been stored on cloud repositories
 # So in linux when using the apt command we refers from talking a packet from the apt-repository
 Note mainly systems like Debian and Ubuntu base Systems mainly relies on the huge APT repositoty and it large number of packages
 The main propose of this repositoties is to unified software management and update so that any  user can easily used and access packages
 So the command apt update  to renew package in our computer
 we also have some other package system like Snap creted by Canonical which is today the default package management for Ubuntu 
 So snap are been consider slox and bunky by the linux community 
 For System base on Red-Enterprice -linux the main  package management is the rpm repository
 Sudo the use the command dnf update && dnf upgrade

 I can also have more package managements

 But in linux use mostly user apt and Flatpak packages which are lighter and more compatible with our systems and machine.
 On a linux machine we generally have software install form differcent package management.

 # we can view all what the package manager can with comamand : apt ? or dnf ?
 Note apt is mainly an adminstrative command  that is while we mostly used 
 # sudo apt update && sudo apt upgrade 
 So using our package manager we can install app using the apt install package_name
 Remove using the apt remove package_name
 We can also purge packages using the apt purge so that all the setting of our app should be our will be delected

 # Lesson 26 :  dpkg utility
 dpkg stands for debian packages and can manager other packages it mainly offers more flexibity to our systems 
 # The dpkg is the package which permit us to install .deb files so it make our lifes easier on linux
 Always call the command help like dpkg --help and view what it can do 
# dpkg -l | wc -l  && apt list --installed | wc -l   Command use to check the number of dpkg and  apt package install me machine
apt list | wc -l Number of packages in apt today is about 99682 packages.
The display informations about a package we used the command apt show package_name
# Example apt show firefox or apt show codium 
to install a package using dpkg we use the command 
# dpkg -i package_name.deb
We can search a particulat file using the command "apt seatch package_name"
# Note : All the installation needs the sudo prefix 


# Lesson 27 :Adding repositories
In linux all software are not always avaiable via the package  management 
To install programs like  gns3 Vscodium and even more other files we can add repositories to our machine 
Which will provide us more set of package to do our installations.
Do no forget package are install during using dpkg management
To remove packages using the dpkg utility we used the sudo -r dpkg package_names
# Adding repository will permit us to be always notified to any software update 
Adding a new repo is mainly involves 2 steps which mainly includes desiding the repo to add and aading the repo keys
Beacuse we should all repositories has specific keys which permit to connect to them for package transactions.
repositories are been paste into the source.list directory.
# Example all our repositories are in the /etc/apt/sources.list.d file 
Following this path we can add all the repository i want on our linux machine.
When adding repository we sometimes need to know our system Codename to know if we are adding the good repository or not 
# for that we use the command lsb_release -a

# Lesson 28 : Cron service,Crontab and utility
The cron service and crontab allows us to manage task schudule on our linux system
cron and crontab are pre-install with linux we can use the command systel to view if the cron service is operational on our machine 
# that is systemctl status cron 
Let start the cron service on our computer and start managing utility tasks
Using the crontab --help we can view the used of the crontab and our it functions 
# Let run crontab -l to list our tasks in occurs in our computer 
But since no task was define we gonna display no task 
So let create some let create some crontab first launch using the command 
# crontab -e
Then we will ask to select for a text editor to write our cron tasks
i will choose nano Then delect all inside the configuration file so that we will write our own new configurations
Using the exemple and the task i create we can clearlt see that tasks in cron execute each minute .
For better understanding the used of the crontab we can move to the crontab.guru website which will provide to us better informations about cron
# like task period execution configurations @daily,@hourly,@weekly,@yearly and @reboot
This example give us how the cron task mainly functions according to their usage time So the can be set up to occur each day,hour,minute or even year.


# Lesson 29: Error handling 
Using Crontab we can easily mess up by sending up an incorrect time for a task excusion like 
# giving to a task a delay of more than 60 minutes or zero hours when creating the conditions 
To see how the crontab interact with our system we can move to the crontab and view our configs
When  writing a cron service tasl we should be very careful because if we fail we will not have any chech automatic check and our cron service made crash 
Leaving our whole system with sercious problems

# Now let set Logs in the Cron service
Moving to the  /etc/rsyslog.d/50-default.conf  and modofied the cron logs path so that we can seperate the cron logs into another path file for easy problem solving in this system
After that restart the rsyslog and cron service using the commands
systemctl restart rsyslog && systemctl restart cron
We can also pass through the sudo command to view and add cron tasks to other users
+
# To remove a task we used the command crontab -r to add we used cron -e to list we use crontab -l 


# Lesson 30 : View,add and delect rules 
This is mainly the process of  working with firewalls on linux 
Linux comes with a default tools for adminstrating IP address let it be IPV4 and IPV6 address and that tools is iptables
iptables is an adminstratif utility but in some rare distros we can add this using the command 
sudo apt install iptables 
To list our network rules we can use the command 
# sudo iptables -L
Which will list all the actaul rules in our system
This rules can be stored into a file  like my_iprules 
This rules file will contain all your actaul network files configurations including Vms and container address and their permissions
For management this interaction we need to configurate our firewall to tried in comming requests from other servers on machines
So for both input and output requests we need to do chains rules
We can write rules for pre-processing and out-processing requests.
We can use the command sudo iptables --help to view all what we can do from using the iptables command
# sudo iptables --help
# Using the iptables we can add,chain,delect,Insert,replace rules and do many other stuff all that passing through the command 
# sudo iptables -A,-C,-D,-I,-R respectively 
e.g sudo iptables -A INPUT -j LOG  to task all the logs
To clean all our chain we use the command sudo iptables -F where F= Flush
we can add also log in input,Output and Forward chain using the set of commands

Inputs: sudo iptables -A INPUT -j LOG
Output: sudo iptables -A OUTPUT- j LOG
Forward: sudo iptables -A FORWARD - LOG
# To delect a rule we used the command sudo iptables -D INPUT OR OUTPUT "Rule_number"


# Lesson 31 :Default policies and save rules
We mainly see that with the used of the iptables we can design to who to communicate with who in our computer network 
We can mainly view the iptables utility rules requires using the command
sudo iptable -L --line-numbers To view all my rules i'm actually using docker So for me containersi have many rules sometimes uo to 7 
In the previous lesson we added a Rules like 
# sudo iptables -A INPUT -s "192.168.1.122" -j DROP (rejecting request from this address so the host will be unreachable)
# sudo iptables -A INPUT -s "192.168.1.122" -j ACCEPT (accepting requests from this ip address)

We can also insert some rules using the command  -I
# sudo iptables -I INPUT -s "192.168.1.122" -j  or ACCEPT sudo iptables -I INPUT -s "192.168.1.122" -j DROP or sudo iptables -I INPUT -s "192.168.1.122" -j REJECT
when Delecting  we use the -D and give me specific rule to delect 

Let move on to default policies  
We used the command ip sudo iptable -P INPUT to make all the input requests to be blocked so if we activate this command all more request in a machine will be blocked
# Now let move on rules for ports  
So let set up rules for the port we used on our my 
As we know port 22 is used for ssh connections so let create a new rule for that 
# iptables -I INPUT  -p --tcp --dport 22 -j ACCEPT 
This is make all request to port 22 by allowed and also connect through ssh 
Meaning we can also Drop the use of that port 
# Note that all this setting will be forget or lose when we reboot our linux machine 

But we can make this rule permenent  by saving this rules
Using the commands :  
# whatis iptables-save && whatis iptables-restore
we can save and restore all our iptables configurations we made on our server 
to view all the iptables rules we can used the command

cat iptables_rules

# Lesson 32 : Bashing scripting
whatis bash in the early days of linux bash shell which evolute today into a powerful scripting language
I already have a full linux bah course on my personal repository but let do some bash 
Bash mainly give us superpowers on linux because bash permit us to automate tasks on linux like installation to even packet download passing through automation using prebuilt tools like crontab chmod chown and mainly others
All bash file carries the file extension .sh 
So the bash  is been  defined as command interpreter
Bash  is the more popular shell in linux .
Now let create some script in bash
Today we can used any command editor to write our bash scripts but in server environments we will mainly used the vim editor or nano 
# After writing our script make it executable using the command chmod +x "command.sh"
Let do a small script that will permit us to ping to the internet when launch 

Note the first line in our script "#!bin/bash" is called the shaban line which mainly specified the part to our interpretet in our system 
So if we have an other interpreter than bash we can also specified the path to it .

# Like #!usr/bin/python3 to write python scripts 
# To show where our interpreter is install we used the command   "where is bash or whereis python"
Some example include the following 
whereis bash
bash: /usr/bin/bash /usr/share/man/man1/bash.1.gz
Even when connecting to a docker container other used the bash shell for terminal connections*
we can view all our shell installed on our machine using the command 

cat /etc/shells in mac OS we also have a shell known as the zsh
To make a python script executable use the command chmod u+x "script_name"

# Lesson 33: Docker (Definition and installation)
What is docker today in the modern world of developement docker is mainly the technology using for containization,building and deployment of ready to production images in linux docker is said to be the technology which make developers works unified so the stop the phase it work on my Mahcine 
I already have some bash scripts to install and run docker containers on my machine.
# Or can use the sudo apt install docker.io -y to install and run docker in Ubuntu 
Then using the command docker --help to check what we can do with 
Today docker has permit apps to run in the same server but in differcent containers which can communicate with each other and takes less resources
And Note  Containers != Virtual machine 
Containers are lighter than virtual machines 

# Lesson 34 : Command List ,First container
When docker is been install on our local linux machine to access prebuilt docker containers  we need to pass througth the cloud by the website known as docker.hub Docker hub is a repository where we can upload and download docker images that we can used for projects and ready production activties.

# To pull and docker images we used the command 
docker pull "containe_name" or can move to the website docker.hub and take that image directly 
when we pull and image i take a space on our machine and container consumes Cpu and RAM on our machine so the consume our resources like Vm but far less
This images can given port on which the run so the can be access using our web browser .

To remove a conatiner we used the command docker rm "container_name"
To remove a container image we used the command docker rmi 'container images'
To view container we use docker ps -a
To start we use docker run -it "container name"
exec allows you to run a command inside a container and build permit tp create file images from a docker file 
We generally start with hello-world container to start using docker like in any other programing language.

 # docker run hello-world to pull the hello world container 
 If we already have the docker image on our machine then docker will nor pull any image again and put that specific image.

 # Lesson 35 : Containers with documentations
 To use docker as none sudo we need to add the user in the docker group but it is only used for personal pc and not at enterprise level work for security reasons
like tail  /etc/group to check if the is a group there
To add a new user to the docker group we used the command 
# sudo usermod -aG docker $USER  and restart the docker service sudo systemctl restart docker
In the website we can even run the documentation container on our machine in other to learn docker doc in local let used the following command 

# docker run -dp 80:80 docker/getting-started
We gave the container port 80 so it run on http://localhost:80 with docker all our app will run in our browser
and we can run many containers with this system browser.

# Lesson 36: Nginx Web server
let try to run the popular nginx webserver into a docker container
First look for an nginx webserver using the docker search command 
# docker search nginx 
Which wil give us a list of images at the top of the list is the official docker nginx webserver and other images are customs

pull the nginx container with docker pull nginx  and run the container with the following command
docker run -d nginx where d = detach ,But Now let map a port to our container using the -p option
# docker run -d -p 8080:80 nginx 
The first address in the port inside the container and the 80 port is the port outside our container  and move to our web browser 
Use the command exec to excute processes inside the container.
I will run my container using portainer-ce whcih permits to run and manage   containers in browser

# Lesson 37 : Dockfile
The Dockerfile is just a plane text file but the first letter has be written in capital letter 
Dockerfile is mainly used to automate the steps of creating docker image so this create custom containers from the same image
Let create an nginx folder where we will build some nginx containers using the nginx image
To write a Dockerfile we need to start with the form command to specified from which images we can building our file 
We need to know the notion of layers which permit to build container on top of other one like on Ubuntu container which will contain an nginx container build inside it and that nginx container running other images so we can build images on images

# So we can multistage Docker

# Okay so let build that Dockerfile

We wrote a Dockerfile inside the folder nginx project
# Used the command docker build -t  Bruce_nginx_image . to build and nginx webserver
Image create using dockerfile are mode lighter and compact then images created
Then give it a port and run our container

# lesson 38 : docker-compose
Docker compose is not a default package that come with docker it is install on it own 
we can used the command sudo apt install docker-compose to install it 
The main rule of docker-compose is that it allosws us to define and run mutliple containers within the same docker application and permit us to run full lab during mainly images
It mainly a more proffession way to works with container used to automate container usage deployement and management
# Docker-compose file what we want we call .yml 
let create a docker-compose file to run phpmyadmin and Mysql database  or mariadb in the same application
After writing our docker-compose file we used the  the following commands to run and stops the services

# docker-compose up -d
# docker-compose down -v where v = volumes


# Removing resources 
After working for a long time with docker we can find out that we have mainly launch and used mainly images so we made like to used the command 
# docker rm "container-id" 
Always stop our running container
But we can also remove forfully our containers using the command 
# docker rm -f "container-id"

If we only need the containers id we use the command 
# docker ps -aq
To delect all this contaienr we use the command 

# docker rm $(docker ps -aq)
To remove all images we used docker rmi $(docker ps -aq)

This is the end of the course


Author :Fouenang Miguel Bruce
Address: miguelfouenanf@gmail.com or bfouenang237@gmail.com
