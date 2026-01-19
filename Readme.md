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

On like almost all text editors vim supports search which can be done using the "/ key"