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
