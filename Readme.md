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
# mkdir 1/2/3 this will create a hierachy folders 
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