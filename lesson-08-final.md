# Session 8: Networking, Automation, and System Administration Basics

**Duration:** 50 minutes  
**Prerequisites:** Completed Sessions 1-7, comprehensive command line knowledge

## Learning Objectives

By the end of this session, students will be able to:
- Use basic networking commands for connectivity testing
- Understand shell scripting fundamentals
- Create and schedule basic automation tasks
- Explore system administration concepts
- Plan their continued Linux learning journey

## Materials Needed
- Linux system with internet connection
- Networking reference sheet
- Shell scripting examples
- Career guidance resources

## Session Outline

### Opening Review (5 minutes)
- Review package management
- Final course overview
- Introduction to advanced topics

### Part 1: Basic Networking Commands (15 minutes)

#### Essential Network Commands

**ping - Test Connectivity**
```bash
ping google.com              # Test internet connectivity
ping -c 4 google.com         # Ping 4 times only
ping 192.168.1.1             # Ping local gateway
ping -6 ipv6.google.com      # IPv6 ping
```

**wget - Download Files**
```bash
wget https://example.com/file.txt       # Download file
wget -O newname.txt https://example.com/file.txt  # Download with new name
wget -c https://example.com/largefile   # Resume interrupted download
wget -r https://example.com/            # Recursive download (be careful!)
```

**curl - Transfer Data**
```bash
curl https://example.com                # Display webpage content
curl -o output.html https://example.com # Save to file
curl -I https://example.com             # Show headers only
curl -L https://example.com             # Follow redirects
curl -d "data=value" https://api.com    # POST data
```

**Network Information Commands**
```bash
ip addr show                 # Show network interfaces
ip route show               # Show routing table
ss -tuln                    # Show listening ports
netstat -tuln               # Alternative to ss (if available)
hostname                    # Show system hostname
hostname -I                 # Show IP addresses
```

### Part 2: Shell Scripting Basics (15 minutes)

#### Introduction to Shell Scripts

**What is a Shell Script?**
- Text file containing shell commands
- Automates repetitive tasks
- Can include logic (conditions, loops)
- Executable like any other program

**Creating Your First Script:**
```bash
#!/bin/bash
# This is a comment
echo "Hello, Linux World!"
echo "Today is: $(date)"
echo "Current user: $(whoami)"
echo "Current directory: $(pwd)"
```

**Script Creation Process:**
```bash
# Create script file
nano hello.sh

# Add shebang and content (see above)

# Make executable
chmod +x hello.sh

# Run script
./hello.sh
```

#### Basic Script Elements

**Variables:**
```bash
#!/bin/bash
NAME="Linux User"
COUNT=10

echo "Hello, $NAME"
echo "Count is: $COUNT"
echo "Home directory: $HOME"
```

**User Input:**
```bash
#!/bin/bash
echo "What is your name?"
read USERNAME
echo "Hello, $USERNAME!"
```

**Simple Conditions:**
```bash
#!/bin/bash
if [ -f "myfile.txt" ]; then
    echo "File exists"
else
    echo "File does not exist"
fi
```

**Basic Loop:**
```bash
#!/bin/bash
for i in {1..5}; do
    echo "Number: $i"
done
```

### Part 3: Task Automation with Cron (10 minutes)

#### Understanding Cron

**What is Cron?**
- System service for scheduled tasks
- Runs commands at specified times
- Useful for backups, updates, maintenance
- Each user can have their own crontab

**Cron Time Format:**
```
* * * * * command
│ │ │ │ │
│ │ │ │ └── Day of week (0-7, 0 and 7 are Sunday)
│ │ │ └──── Month (1-12)
│ │ └────── Day of month (1-31)
│ └──────── Hour (0-23)
└────────── Minute (0-59)
```

**Common Cron Examples:**
```bash
# Every minute
* * * * * /path/to/script.sh

# Every day at 2 AM
0 2 * * * /path/to/backup.sh

# Every Monday at 9 AM
0 9 * * 1 /path/to/weekly_task.sh

# Every 5 minutes
*/5 * * * * /path/to/frequent_task.sh
```

**Managing Crontab:**
```bash
crontab -l                   # List current cron jobs
crontab -e                   # Edit crontab
crontab -r                   # Remove all cron jobs
```

### Part 4: System Administration Basics (5 minutes)

#### User and Group Management
```bash
whoami                       # Current user
id                          # User and group IDs
groups                      # Groups user belongs to
su - username               # Switch user
sudo command                # Run command as root
```

#### System Information
```bash
uname -a                    # System information
lscpu                       # CPU information
free -h                     # Memory usage
df -h                       # Disk usage
uptime                      # System uptime and load
```

#### Log Files
```bash
sudo tail -f /var/log/syslog     # System log (Debian/Ubuntu)
sudo tail -f /var/log/messages   # System log (Red Hat/CentOS)
sudo journalctl -f               # Systemd journal
sudo dmesg                       # Kernel messages
```

## Activities

### Activity 1: Network Connectivity Testing (15 minutes)

**Exercise 1: Basic Connectivity**
```bash
# Test internet connectivity
ping -c 3 google.com
ping -c 3 8.8.8.8

# Test local network
ping -c 3 192.168.1.1  # Adjust to your gateway

# Show network configuration
ip addr show
```

**Exercise 2: Download Practice**
```bash
# Download a small file
wget https://httpbin.org/uuid

# View the downloaded content
cat uuid

# Use curl for the same
curl https://httpbin.org/uuid

# Download with curl and save
curl -o uuid2.json https://httpbin.org/uuid
```

**Exercise 3: Network Information**
```bash
# Show hostname
hostname

# Show network interfaces
ip addr show

# Show routing table
ip route show

# Check listening ports
ss -tuln
```

### Activity 2: Shell Script Creation (15 minutes)

**Exercise 1: System Information Script**
```bash
# Create system info script
nano sysinfo.sh

# Add this content:
#!/bin/bash
echo "=== System Information ==="
echo "Hostname: $(hostname)"
echo "Current User: $(whoami)"
echo "Current Date: $(date)"
echo "Uptime: $(uptime)"
echo "Disk Usage:"
df -h
echo "Memory Usage:"
free -h

# Make executable and run
chmod +x sysinfo.sh
./sysinfo.sh
```

**Exercise 2: Interactive Script**
```bash
# Create interactive backup script
nano simple_backup.sh

# Add this content:
#!/bin/bash
echo "Simple Backup Script"
echo "What directory do you want to backup?"
read SOURCE_DIR

if [ -d "$SOURCE_DIR" ]; then
    BACKUP_NAME="backup_$(date +%Y%m%d_%H%M%S).tar.gz"
    tar -czf "$BACKUP_NAME" "$SOURCE_DIR"
    echo "Backup created: $BACKUP_NAME"
else
    echo "Directory $SOURCE_DIR does not exist!"
fi

# Make executable and test
chmod +x simple_backup.sh
./simple_backup.sh
```

**Exercise 3: File Management Script**
```bash
# Create file organizer script
nano organize_files.sh

# Add this content:
#!/bin/bash
echo "Organizing files by extension..."

mkdir -p txt_files img_files doc_files

# Move different file types
mv *.txt txt_files/ 2>/dev/null
mv *.jpg *.png *.gif img_files/ 2>/dev/null
mv *.doc *.pdf doc_files/ 2>/dev/null

echo "Files organized!"
```

### Activity 3: Cron Job Setup Practice (10 minutes)

**Exercise 1: Create a Simple Cron Job**
```bash
# Edit crontab
crontab -e

# Add this line (runs every minute for testing):
* * * * * echo "Cron test: $(date)" >> ~/cron_test.log

# Save and exit

# Wait a few minutes, then check
cat ~/cron_test.log

# Remove the test job
crontab -e
# Delete the line and save
```

**Exercise 2: Practical Cron Jobs**
```bash
# Edit crontab again
crontab -e

# Add these practical examples (commented out):
# Daily system info log at 2 AM
# 0 2 * * * ~/sysinfo.sh >> ~/daily_sysinfo.log

# Weekly cleanup on Sunday at 1 AM
# 0 1 * * 0 find ~/Downloads -type f -mtime +7 -delete

# Save without uncommenting (for reference)
```

### Activity 4: Career Discussion and Resource Sharing (10 minutes)

**Exercise 1: Linux Skills Assessment**
Create a personal skills checklist:
- [ ] Basic command line navigation
- [ ] File and directory operations
- [ ] Text editing (nano/vim)
- [ ] File permissions understanding
- [ ] Process management
- [ ] Package management
- [ ] Basic networking
- [ ] Shell scripting basics

**Exercise 2: Learning Path Planning**
Discuss and document:
- Areas of interest (development, administration, security)
- Next learning goals
- Resources for continued learning
- Practice project ideas

## Practical Final Project

### Project: Complete System Administration Task
Combine all skills learned to create a system maintenance script:

```bash
#!/bin/bash
# System Maintenance Script

echo "=== Daily System Maintenance ==="
echo "Started at: $(date)"

# Update package database
echo "Updating package database..."
sudo apt update

# Check for available upgrades
echo "Checking for upgrades..."
apt list --upgradable

# Clean package cache
echo "Cleaning package cache..."
sudo apt autoremove -y
sudo apt autoclean

# Check disk usage
echo "Disk Usage:"
df -h

# Check system load
echo "System Load:"
uptime

# Check recent log entries
echo "Recent System Messages:"
sudo tail -10 /var/log/syslog

echo "Maintenance completed at: $(date)"
```

## Assessment Questions

### Final Comprehensive Check (10 minutes)
1. How do you test connectivity to a website?
2. What is the shebang line in a shell script?
3. How do you schedule a task to run daily at midnight?
4. What command shows current network interfaces?
5. How do you make a script executable?

### Practical Assessment
Students should demonstrate ability to:
- [ ] Test network connectivity
- [ ] Create and execute a shell script
- [ ] Set up a basic cron job
- [ ] Combine multiple Linux commands effectively
- [ ] Troubleshoot common issues

## Course Completion Project

### Final Assignment: Personal Linux Environment Setup
Create a complete Linux workspace:
1. Organize home directory structure
2. Create useful aliases and scripts
3. Set up automated maintenance tasks
4. Document personal command reference
5. Plan next learning steps

## Career Paths and Next Steps

### Linux Career Opportunities
- **System Administrator**: Manage Linux servers and infrastructure
- **DevOps Engineer**: Automation and deployment pipelines
- **Security Analyst**: Linux security and hardening
- **Software Developer**: Development on Linux platforms
- **Cloud Engineer**: Linux in cloud environments

### Continued Learning Resources
- Advanced shell scripting and automation
- Server administration and services
- Linux security and hardening
- Container technologies (Docker, Kubernetes)
- Cloud platforms (AWS, Azure, Google Cloud)
- Configuration management tools (Ansible, Puppet)

### Practice Recommendations
- Set up home lab environment
- Contribute to open source projects
- Join Linux communities and forums
- Practice with different distributions
- Work on real-world projects

## Course Summary

### Skills Acquired
Students have learned:
- Linux fundamentals and philosophy
- Command line proficiency
- File system navigation and management
- Text editing and permissions
- Process and job control
- Package management
- Basic networking and automation
- System administration basics

### What's Next
- Continue practicing daily
- Explore specialized areas of interest
- Build practical projects
- Consider certification paths
- Join the Linux community

**Congratulations on completing the Introduction to Linux Systems course!**