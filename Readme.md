# This is a Simple Udemy Course to learn how to install used Linux in 2026 from scarth

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
