Linux_2026/projects.md
# Linux Projects for Your Learning Journey

Based on your Linux_2026 course content, here are practical projects organized by difficulty level to help you master Linux system administration and DevOps skills.

---

## Beginner Projects

### Project 1: Personal Backup Script
**Skills**: Shell scripting, cron jobs, file management

Create an automated backup system for your personal files.

**Requirements**:
- Write a bash script that backups a specific directory
- Add timestamp to backup filenames
- Compress backups using `tar` or `zip`
- Schedule it to run daily using `crontab`
- Log all backup operations to a file

**Bonus**: Add email notification when backup completes

---

### Project 2: User Management System
**Skills**: User management, groups, permissions

Create a script to manage users on a Linux system.

**Requirements**:
- Create a script that can: add user, delete user, modify user
- Add users to appropriate groups
- Set default passwords and force change on first login
- Generate a report of all users and their groups

**Commands to use**: `useradd`, `usermod`, `userdel`, `groupadd`, `chmod`, `chown`

---

### Project 3: System Health Monitor
**Skills**: Process management, shell scripting, system monitoring

Build a simple system monitoring tool.

**Requirements**:
- Display CPU usage
- Display memory usage
- Show disk space
- List top 10 processes by memory usage
- Check if critical services are running

**Commands to use**: `top`, `htop`, `df`, `du`, `ps`, `free`, `systemctl`

---

### Project 4: Log File Analyzer
**Skills**: Text processing, grep, regular expressions

Create a script that analyzes system log files.

**Requirements**:
- Parse `/var/log/syslog` or `/var/log/auth.log`
- Count failed login attempts
- Extract IP addresses of failed attempts
- Generate a summary report
- Alert if failed attempts exceed threshold

**Commands to use**: `grep`, `awk`, `sed`, `cat`, `wc`, `sort`, `uniq`

---

## Intermediate Projects

### Project 5: Automated LAMP Stack Deployment
**Skills**: Package management, services, web servers

Deploy a complete LAMP (Linux, Apache, MySQL, PHP) stack automatically.

**Requirements**:
- Write a script that installs Apache, MySQL, and PHP
- Configure firewall rules using `iptables` or `ufw`
- Secure MySQL installation
- Create a test PHP page
- Enable services to start on boot

**Deliverables**: Single script that sets up entire LAMP stack

---

### Project 6: Dockerized Web Application
**Skills**: Docker, Docker Compose, Nginx

Build a multi-container web application.

**Requirements**:
- Create a Dockerfile for a custom web application
- Use `docker-compose.yml` to orchestrate multiple containers
- Set up Nginx as reverse proxy
- Configure persistent volumes for data
- Set up a container for MySQL/MariaDB

**Example Stack**: Nginx + PHP-FPM + MySQL

---

### Project 7: Firewall Configuration Script
**Skills**: iptables, networking, security

Create a comprehensive firewall setup script.

**Requirements**:
- Configure iptables rules for a web server
- Allow SSH (port 22), HTTP (80), HTTPS (443)
- Block common attack patterns
- Implement rate limiting for SSH
- Save and restore iptables rules
- Log dropped packets

**Deliverables**: Script with clear comments explaining each rule

---

### Project 8: Automated Server Setup Script
**Skills**: System administration, scripting, services

Create a script to set up a fresh Ubuntu server.

**Requirements**:
- Update and upgrade system
- Install essential packages (vim, curl, wget, git, htop)
- Create a non-root user with sudo privileges
- Configure SSH (disable root login, change port)
- Set up UFW firewall
- Configure timezone
- Install and configure fail2ban

---

### Project 9: Cron Job Manager
**Skills**: Cron, scripting, systemd

Build a simple cron job management interface.

**Requirements**:
- Create a bash script that can:
  - List all cron jobs for current user
  - Add a new cron job
  - Remove a cron job
  - Enable/disable cron jobs
- Validate cron syntax before adding
- Backup crontab before modifications

---

## Advanced Projects

### Project 10: Multi-VM Lab Environment
**Skills**: Virtualization, networking, automation

Set up a complete lab environment using virtualization.

**Requirements**:
- Create 3 VMs: Web Server, Database Server, Load Balancer
- Configure internal networking between VMs
- Set up SSH key-based authentication between VMs
- Configure Nginx load balancer
- Set up MySQL replication
- Document the entire setup process

---

### Project 11: Container Orchestration with Docker Compose
**Skills**: Docker, Docker Compose, networking

Build a microservices architecture.

**Requirements**:
- Create multiple services:
  - Web server (Nginx)
  - Application server (PHP/Python)
  - Database (MySQL/PostgreSQL)
  - Cache (Redis)
  - phpMyAdmin for database management
- Configure networking between containers
- Set up persistent storage
- Implement health checks
- Configure restart policies

---

### Project 12: Automated Security Auditing Tool
**Skills**: Security, scripting, system analysis

Create a security audit script.

**Requirements**:
- Check for open ports
- Verify SSH configuration
- Check for world-writable files
- Find SUID/SGID files
- Check password policies
- Verify firewall rules
- Generate security score and recommendations

---

### Project 13: System Backup and Recovery Solution
**Skills**: Backup, scripting, disaster recovery

Build a complete backup solution.

**Requirements**:
- Full system backup using `rsync` or `tar`
- Incremental backup support
- Backup rotation (keep last 7 days, 4 weeks, 12 months)
- Remote backup to another server
- Backup verification
- Recovery script
- Email notifications

---

### Project 14: Monitoring Dashboard
**Skills**: Web servers, scripting, data visualization

Create a simple web-based monitoring dashboard.

**Requirements**:
- Use shell scripts to collect system metrics
- Display in a simple HTML page
- Auto-refresh every 30 seconds
- Show:
  - CPU usage graph
  - Memory usage
  - Disk space
  - Running services
  - Active connections
- Serve using Nginx

---

## Capstone Projects

### Project 15: Complete Web Server Setup
**Skills**: All course topics combined

Deploy a production-ready web server.

**Requirements**:
1. **Server Setup**
   - Install and configure Ubuntu Server
   - Create non-root user with sudo access
   
2. **Web Stack**
   - Install Nginx
   - Configure virtual hosts
   - Set up SSL certificate (self-signed or Let's Encrypt)
   
3. **Database**
   - Install MySQL/MariaDB
   - Create database and user
   - Secure installation
   
4. **Security**
   - Configure firewall (iptables/UFW)
   - Set up fail2ban
   - Disable root SSH login
   - Configure SSH keys
   
5. **Monitoring**
   - Install monitoring tools
   - Set up log rotation
   - Configure cron jobs for maintenance
   
6. **Docker**
   - Install Docker
   - Deploy phpMyAdmin in Docker container
   
7. **Documentation**
   - Document all configurations
   - Create setup scripts for reproducibility

---

### Project 16: DevOps Pipeline Project
**Skills**: Scripting, automation, CI/CD concepts

Create a simple CI/CD pipeline.

**Requirements**:
- Write a script that:
  - Pulls code from a git repository
  - Runs tests
  - Builds Docker image
  - Deploys to server
  - Sends notification on success/failure
- Schedule automated deployments
- Implement rollback mechanism

---

## Quick Practice Tasks

These are small tasks you can complete in under an hour:

| Task | Skills Practiced |
|------|-----------------|
| Create a script that greets you with your username and current date | Variables, echo, date |
| Write a script to find all files larger than 100MB | find, du, file management |
| Create a hard link and soft link, explain the difference | ln, file systems |
| Set up a simple alias for frequently used commands | alias, shell configuration |
| Create a script that backs up your vim/nano config files | cp, variables, scripting |
| Write a script to monitor a specific process | ps, grep, while loop |
| Create a systemd service for a custom script | systemd, services |
| Set up log rotation for a custom log file | logrotate, configuration |

---

## Project Tracking Template

Use this template to track your projects:

```markdown
## Project Name: ____________
- **Start Date**: 
- **Completion Date**: 
- **Skills Learned**: 
- **Challenges Faced**: 
- **Solutions Found**: 
- **Resources Used**: 
- **GitHub Repository**: 
```

---

## Resources for Projects

- **Documentation**: Always use `man` pages and `--help` flags
- **Community**: Stack Overflow, Reddit r/linux, Ask Ubuntu
- **Practice**: Try things in a VM first, never on production!

---

> 💡 **Tip**: Start with beginner projects and work your way up. Each project builds on skills from previous ones. Document everything you learn!

---

**Author**: Fouenang Miguel Bruce  
**Course**: Linux_2026  
**Created**: 2024
