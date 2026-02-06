# Linux Essentials: A Comprehensive Course

This repository contains the materials and notes for a comprehensive Linux course designed for beginners and intermediate users. It covers fundamental command-line operations, file management, system administration, scripting, and modern containerization technologies like Docker. The course progresses logically from basic concepts to more advanced topics, providing practical examples and exercises.

**Author:** Fouenang Miguel Bruce
**Contact:** miguelfouenanf@gmail.com or bfouenang237@gmail.com

---

## Course Overview

This course is structured to provide a solid foundation in Linux, moving from core concepts to practical application and modern DevOps tools.

---

## Table of Contents

*   [1. Introduction to Virtualization](#1-introduction-to-virtualization)
*   [2. Mastering the Linux Terminal](#2-mastering-the-linux-terminal)
*   [3. Basic Navigation and File System Structure](#3-basic-navigation-and-file-system-structure)
*   [4. File and Directory Management](#4-file-and-directory-management)
*   [5. Viewing File Content](#5-viewing-file-content)
*   [6. Text Editors](#6-text-editors)
*   [7. Archiving and Compression](#7-archiving-and-compression)
*   [8. Finding Files and Data](#8-finding-files-and-data)
*   [9. User and Group Management](#9-user-and-group-management)
*   [10. Links and Inodes](#10-links-and-inodes)
*   [11. Input/Output Streams and Pipelines](#11-inputoutput-streams-and-pipelines)
*   [12. Process Management and System Monitoring](#12-process-management-and-system-monitoring)
*   [13. Package Management](#13-package-management)
*   [14. Scheduled Tasks (Cron)](#14-scheduled-tasks-cron)
*   [15. Firewall Management (iptables)](#15-firewall-management-iptables)
*   [16. Bash Scripting](#16-bash-scripting)
*   [17. Docker and Containerization](#17-docker-and-containerization)

---

## 1. Introduction to Virtualization

*   **What is Virtualization?** The process of installing an OS in a virtual machine (VM) using virtualization software.
*   **Virtualization Software:**
    *   **Virtualbox:** Free and open-source.
    *   **VMware:** Professional, often used by enterprises.
    *   **Virt-manager:** Linux-based alternative, common for cloud computing.
*   **Process:** Download an OS ISO image (e.g., Ubuntu LTS) and install it within the VM.
*   **Benefits on Linux:** VMs are separate from the host, with their own IP and configurations, useful for networking and isolation.
*   **Guest Additions:** Enable file sharing between host and VM.

---

## 2. Mastering the Linux Terminal

*   **Clearing the Terminal:**
    *   `clear`: Clears the screen.
    *   `CTRL + L`: Alternative to clear.
*   **Editing Terminal Input:**
    *   `CTRL + U`: Clear input from cursor to the beginning of the line.
    *   `CTRL + K`: Clear input from cursor to the end of the line.
*   **Command Information:**
    *   `whatis <commandname>`: Displays a brief description of a command.
    *   `history`: Shows a list of previously executed commands.
    *   `! + command_number`: Re-executes a command from history by its number.
    *   `CTRL + R`: Search through command history.
*   **Terminal Recovery:**
    *   `reset`: Resets the terminal when it crashes.

---

## 3. Basic Navigation and File System Structure

*   **Current Location:**
    *   `pwd` (Print Working Directory): Shows your current directory.
*   **Changing Directories:**
    *   `cd <directory>`: Change to a specific directory.
    *   `cd ..`: Move up one directory level.
    *   `cd ~` or `cd`: Return to the home directory.
    *   `cd /path/to/directory`: Use absolute paths.
*   **Listing Directory Contents:**
    *   `ls`: List files and directories.
    *   `ls -a`: List all files, including hidden ones (starting with '.').
    *   `ls -l`: Display detailed information (permissions, ownership, size, date).
*   **Linux Folder Structure:**
    *   `/bin`: Essential user command binaries.
    *   `/boot`: Boot loader files.
    *   `/home`: User home directories.
    *   `/lib`: Essential shared libraries.
    *   `/opt`: Optional application software packages.
    *   `/proc`: Virtual filesystem for process information.
    *   `/root`: Home directory for the root user.
    *   `/tmp`: Temporary files (deleted on reboot).
    *   `/usr`: User utilities and applications.
    *   `/var/log`: Log files.
*   **Disk Usage:**
    *   `df`: Display disk space usage.
    *   `df -h`: Human-readable format (e.g., GB, MB).
    *   `df -hT /`: Show disk space and filesystem type for the root partition.
    *   `du`: Estimate file space usage.
    *   `du ~ .s`: Show disk usage for files and directories in the home directory.

---

## 4. File and Directory Management

*   **Creating Directories:**
    *   `mkdir <name>`: Creates a new directory.
    *   `mkdir folder1 folder2 folder3`: Creates multiple directories.
    *   `mkdir -p 1/2/3`: Creates a hierarchy of directories.
*   **Removing Directories:**
    *   `rmdir <directory>`: Removes an empty directory.
*   **Creating Files:**
    *   `touch <filename>`: Creates an empty file.
    *   `echo > <filename>`: Creates a file and writes content (overwrites if exists).
    *   `cat > <filename>`: Creates a file and allows typing content directly. Press `CTRL+D` to finish.
*   **File Operations:**
    *   `cp <source> <destination>`: Copies files or directories.
    *   `mv <source> <destination>`: Moves files/directories or renames them.
    *   `rm <filename>`: Removes files.
    *   `rm -r <directory>`: Removes a directory and its contents recursively.
    *   **Caution:** `rm -rf /` is extremely dangerous and should NEVER be used. Deleted files do not go to the trash.
*   **Directory Structure Visualization:**
    *   `tree`: Displays the directory structure in a tree-like format. (May need to be installed: `sudo apt install tree`)

---

## 5. Viewing File Content

*   **Sequential Viewing:**
    *   `more <filename>`: Displays content one screen at a time. Press `Space` to advance, `q` to quit.
    *   `more -10 <filename>`: Displays content starting from line 10.
    *   `more +150 <filename>`: Displays content starting from line 150.
    *   `more +150 -25 <filename>`: Displays 25 lines starting from line 150.
    *   `more -s <word> <filename>`: Searches for a word and displays context.
*   **Advanced Viewing:**
    *   `less <filename>`: Similar to `more` but more powerful, allows backward scrolling.
    *   `less -p "Word" <filename>`: Searches for "Word" within the file.
*   **Viewing File Headers/Tails:**
    *   `head <filename>`: Displays the first 10 lines.
    *   `head -3 <filename>`: Displays the first 3 lines.
    *   `tail <filename>`: Displays the last 10 lines.
    *   `tail -1 <filename>`: Displays the last line.
*   **Downloading Files:**
    *   `wget <URL>`: Downloads files from a given URL.

---

## 6. Text Editors

Linux offers powerful text editors for managing configuration files, scripts, and code.

### Vim

A highly configurable and powerful modal text editor.

*   **Modes:** Command Mode, Normal Mode, Insert Mode (switch using `Esc`).
*   **Basic Operations:**
    *   `vim <filename>`: Opens the file.
    *   `i`: Enter Insert Mode to type.
    *   `:w`: Save changes.
    *   `:q`: Quit.
    *   `:wq`: Save and quit.
    *   `:q!`: Quit without saving changes.
*   **Navigation:** Use `h`, `j`, `k`, `l` keys in Normal Mode.
*   **Search:** Press `/` in Normal Mode, type your search term, press `Enter`. Press `n` to find the next occurrence.
*   **Learning Vim:** `vimtutor` (requires `vim-runtime` installation) provides an interactive tutorial.

### Nano

A simple, user-friendly, command-line text editor.

*   **Basic Operations:**
    *   `nano <filename>`: Opens the file.
    *   `CTRL + S` or `CTRL + O`: Save the file (Write Out).
    *   `CTRL + X`: Exit Nano.
*   **Backup:** `nano -B <filename>` creates a backup file (e.g., `filename~`).

---

## 7. Archiving and Compression

Archiving (bundling files) and compression (reducing file size) are common tasks.

*   **Tar (Tape Archive):**
    *   Create an archive: `tar -cf archive.tar file1 file2`
    *   Create a compressed archive (gzip): `tar -zcf archive.tar.gz file1 file2`
    *   Extract an archive: `tar -xf archive.tar`
    *   Extract a compressed archive: `tar -zxf archive.tar.gz`
*   **Zip Utility:**
    *   Create a zip archive: `zip archive.zip file1 file2`
    *   Extract a zip archive: `unzip archive.zip`

---

## 8. Finding Files and Data

*   **Finding Files by Name:**
    *   `find <path> -name "<pattern>"`: Searches for files matching a pattern (e.g., `find . -name "*.txt"`).
*   **Finding Files by Size:**
    *   `find <path> -size +10k`: Finds files larger than 10KB.
    *   `find <path> -size 100k`: Finds files exactly 100KB.
    *   `find <path> -size 10M`: Finds files exactly 10MB.

---

## 9. User and Group Management

Managing users and their permissions is crucial for system security.

*   **User Information:**
    *   `whoami`: Displays the current username.
    *   `id`: Displays UID, GID, and group memberships.
    *   `groups`: Lists the groups the current user belongs to.
    *   `su <username>`: Switch user.
    *   `sudo su`: Switch to the root user (requires password).
    *   **Root Indicator:** Users ending in `#` are root; `$` indicates a regular user.
*   **User Creation:**
    *   `sudo useradd <username>`: Creates a new user.
        *   `-m`: Create home directory.
        *   `-d <home_dir>`: Specify home directory path.
        *   `-s <shell>`: Specify login shell (e.g., `/bin/bash`).
    *   `sudo adduser <username>`: A more user-friendly command that prompts for information and sets up the user.
    *   `sudo deluser <username>`: Deletes a user.
*   **User Modification:**
    *   `sudo usermod <options> <username>`: Modifies user account properties.
        *   `-L`: Lock the user account.
        *   `-U`: Unlock the user account.
        *   `-d <home_dir>`: Change the home directory.
        *   `-aG <group>`: Add user to a supplementary group.
*   **Group Management:**
    *   `sudo groupadd <groupname>`: Creates a new group.
    *   `sudo groupdel <groupname>`: Deletes a group.
    *   `tail /etc/group`: View group information.
*   **Permissions:**
    *   **Read (`r`), Write (`w`), Execute (`x`)**: Applied to Owner, Group, Others.
    *   `chmod <permissions> <filename>`: Changes file/directory permissions.
        *   Symbolic: `chmod o+w file` (add write for others), `chmod go-rw file` (remove read/write for group/others), `chmod a=rw file` (set read/write for all).
        *   Octal: `755` (rwx for owner, rx for group/others), `644` (rw for owner, r for group/others).
    *   `chown <user>:<group> <filename>`: Changes file owner and group.
    *   `chgrp <group> <filename>`: Changes file group ownership.
*   **Special Permissions:**
    *   **Sticky Bit (`t`):** When set on a directory, only the file owner or root can delete files within it (e.g., `/tmp`). `chmod +t <directory>`.
    *   `umask`: Controls default file/directory permissions for newly created files.

---

## 10. Links and Inodes

Linux uses links to refer to files.

*   **Hard Link:** A direct pointer to the file's inode. Deleting the original file does not remove the hard link's data if other hard links exist. `ln <original_file> <link_name>`
*   **Symbolic Link (Soft Link):** A special file that contains a pointer to another file or directory path. Deleting the original file breaks the soft link. `ln -s <original_file> <link_name>`
*   **Recommendation:** Soft links are generally preferred for flexibility and avoiding data loss if the original is deleted.

---

## 11. Input/Output Streams and Pipelines

Linux commands communicate through standard input (stdin), standard output (stdout), and standard error (stderr).

*   **Redirection:**
    *   `command > <file>`: Redirect stdout to a file (overwrites).
    *   `command >> <file>`: Redirect stdout to a file (appends).
    *   `command 2> <error_file>`: Redirect stderr to a file.
    *   `command &> <output_and_error_file>`: Redirect both stdout and stderr.
*   **`cat` Command:**
    *   `cat <filename>`: Displays file content.
    *   `cat file1 file2 > combined_file`: Concatenates multiple files into one.
    *   `cat > <filename>`: Creates a new file by typing input.
    *   `cat >> <filename>`: Appends input to an existing file.
*   **`echo` Command:**
    *   `echo "Text"`: Displays text to stdout.
    *   `echo "Text" && echo "Another Text"`: Executes the second command only if the first succeeds.
    *   `echo "Text" || echo "Error Message"`: Executes the second command only if the first fails.

---

## 12. Process Management and System Monitoring

Understanding and managing running processes is vital.

*   **Process Monitoring:**
    *   `top`: Displays a dynamic, real-time view of running processes, CPU usage, memory, etc.
    *   `htop`: An enhanced, interactive process viewer with a better UI and more features. (May need installation: `sudo apt install htop`)
    *   `ps`: Provides a snapshot of current processes (`ps aux`, `ps -ef`).
*   **Process Identification:**
    *   `PID`: Process ID.
*   **Process Control:**
    *   `kill <PID>`: Sends a termination signal to a process.
    *   `kill -9 <PID>`: Forcefully terminates a process.
    *   `sudo kill <PID>`: As root, can kill any process.
    *   `pgrep <process_name>` or `pidof <process_name>`: Finds the PID of a running program.
*   **Systemd Services:**
    *   `systemctl status <service>`: Checks the status of a service (e.g., `ssh`, `docker`).
    *   `systemctl start <service>`: Starts a service.
    *   `systemctl stop <service>`: Stops a service.
    *   `systemctl restart <service>`: Restarts a service.
    *   `systemctl enable <service>`: Enables a service to start on boot.
    *   `systemctl disable <service>`: Disables a service from starting on boot.
*   **Swap Memory:**
    *   Virtual RAM used when physical RAM is full.

---

## 13. Package Management

Linux distributions use package managers to install, update, and remove software.

*   **APT (Advanced Package Tool) - Debian/Ubuntu:**
    *   `sudo apt update`: Refreshes the list of available packages from repositories.
    *   `sudo apt upgrade`: Installs updates for existing packages.
    *   `sudo apt full-upgrade`: Performs a more comprehensive upgrade, handling dependency changes.
    *   `sudo apt install <package_name>`: Installs a package.
    *   `sudo apt remove <package_name>`: Removes a package, but keeps configuration files.
    *   `sudo apt purge <package_name>`: Removes a package and its configuration files.
*   **DPKG (Debian Package Manager):**
    *   `sudo dpkg -i <package_name.deb>`: Installs a `.deb` file.
    *   `dpkg -l`: Lists installed packages.
*   **DNF (Dandified YUM) - Fedora/RHEL/CentOS:**
    *   `sudo dnf update`: Updates all packages.
    *   `sudo dnf upgrade`: Upgrades installed packages.
    *   `sudo dnf install <package_name>`: Installs a package.
*   **Adding Repositories:**
    *   Software not in default repositories can be added by configuring sources in `/etc/apt/sources.list` or `/etc/apt/sources.list.d/`.
    *   Often requires adding a GPG key for security.
    *   `lsb_release -a`: Shows system codename, useful for finding compatible repositories.

---

## 14. Scheduled Tasks (Cron)

Automate tasks to run at specific times or intervals.

*   **Cron Service:** The background service that runs scheduled jobs.
    *   `systemctl status cron`: Check if the cron service is running.
*   **Crontab:** A file containing the schedule of cron entries to be executed.
    *   `crontab -l`: Lists current cron jobs.
    *   `crontab -e`: Edits the current user's crontab file (opens in a text editor).
    *   `crontab -r`: Removes the current user's crontab file.
*   **Cron Syntax:**
    *   `* * * * * command_to_execute`
    *   Fields: Minute (0-59), Hour (0-23), Day of Month (1-31), Month (1-12), Day of Week (0-7, Sunday=0 or 7).
*   **Special Strings:** `@daily`, `@hourly`, `@weekly`, `@yearly`, `@reboot`.
*   **Error Handling:** Configure logs for cron jobs (e.g., by modifying `/etc/rsyslog.d/50-default.conf`). Restart `rsyslog` and `cron` services after changes.

---

## 15. Firewall Management (iptables)

`iptables` is a powerful firewall utility for managing network traffic rules.

*   **Listing Rules:**
    *   `sudo iptables -L`: Lists all current firewall rules.
    *   `sudo iptables -L --line-numbers`: Lists rules with their numbers for easier management.
*   **Chains:** `INPUT` (incoming traffic), `OUTPUT` (outgoing traffic), `FORWARD` (traffic passing through).
*   **Rule Management:**
    *   `-A <CHAIN>`: Append a rule.
    *   `-D <CHAIN>`: Delete a rule.
    *   `-I <CHAIN>`: Insert a rule at a specific position.
    *   `-P <CHAIN> <policy>`: Set the default policy (e.g., `ACCEPT`, `DROP`, `REJECT`) for a chain.
*   **Common Rules:**
    *   Allowing/Denying specific IPs: `sudo iptables -A INPUT -s <IP_ADDRESS> -j ACCEPT/DROP`
    *   Allowing/Denying specific ports: `sudo iptables -I INPUT -p tcp --dport 22 -j ACCEPT` (Allow SSH)
*   **Flushing Rules:** `sudo iptables -F`: Removes all rules.
*   **Saving and Restoring:**
    *   `sudo iptables-save > <rules_file>`: Saves current rules to a file.
    *   `sudo iptables-restore < <rules_file>`: Restores rules from a file.
    *   **Note:** Rules are often lost on reboot unless saved and restored automatically.

---

## 16. Bash Scripting

Bash is a powerful shell and scripting language for automating tasks in Linux.

*   **Script Structure:**
    *   Shebang line: `#!/bin/bash` (specifies the interpreter).
    *   Commands and logic.
*   **Making Scripts Executable:**
    *   `chmod +x <script_name.sh>`
*   **Execution:**
    *   `./<script_name.sh>` (if in the current directory)
*   **Use Cases:** Automating installations, system administration, data processing, and more.
*   **Finding Interpreters:** `whereis bash`, `which python3`.
*   **Installed Shells:** `cat /etc/shells`.

---

## 17. Docker and Containerization

Docker is a platform for developing, shipping, and running applications in containers.

*   **What are Containers?** Lighter-weight than VMs, sharing the host OS kernel but isolating applications and their dependencies.
*   **Installation (Ubuntu):**
    *   `sudo apt update`
    *   `sudo apt install docker.io -y`
    *   `sudo systemctl start docker`
    *   `sudo systemctl enable docker`
*   **Docker Hub:** A registry for Docker images.
*   **Basic Docker Commands:**
    *   `docker --help`: View available commands.
    *   `docker pull <image_name>`: Downloads an image from Docker Hub.
    *   `docker ps`: Lists running containers.
    *   `docker ps -a`: Lists all containers (running and stopped).
    *   `docker run <image_name>`: Creates and starts a new container from an image.
        *   `-it`: Interactive mode with a pseudo-TTY.
        *   `-d`: Detached mode (runs in the background).
        *   `-p <host_port>:<container_port>`: Maps a port from the host to the container.
    *   `docker exec <container_id> <command>`: Runs a command inside a running container.
    *   `docker rm <container_id>`: Removes a stopped container.
    *   `docker rmi <image_id>`: Removes an image.
*   **Building Custom Images:**
    *   **Dockerfile:** A text file containing instructions to build a custom Docker image.
    *   `docker build -t <image_name> .`: Builds an image from a Dockerfile in the current directory.
*   **Docker Compose:**
    *   Tool for defining and running multi-container Docker applications.
    *   Requires a `docker-compose.yml` file.
    *   `docker-compose up -d`: Starts services defined in the `docker-compose.yml` file in detached mode.
    *   `docker-compose down`: Stops and removes containers, networks, and volumes.
*   **Permissions:** Add user to `docker` group for non-root Docker commands: `sudo usermod -aG docker $USER` (requires logout/login or `newgrp docker`).
*   **Example:** Running a web server (Nginx) or documentation container.

---
