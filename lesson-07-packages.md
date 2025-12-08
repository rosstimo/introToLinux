# Session 7: Package Management and Software Installation

**Duration:** 50 minutes  
**Prerequisites:** Completed Sessions 1-6, comfortable with command line operations

## Learning Objectives

By the end of this session, students will be able to:
- Understand package management concepts and benefits
- Use distribution-specific package managers (apt, yum, dnf)
- Install, update, and remove software packages
- Manage software repositories and dependencies
- Perform system updates safely

## Materials Needed
- Linux system with internet connection
- Package manager reference cards
- List of safe packages for practice installation

## Session Outline

### Opening Review (5 minutes)
- Review process management concepts
- Check internet connectivity
- Introduction to software management needs

### Part 1: Package Management Overview (10 minutes)

**What is Package Management?**
- Centralized software installation and maintenance
- Automatic dependency resolution
- Security through trusted repositories
- Easy updates and removal
- Version control and conflict management

**Package Components:**
- **Package**: Compiled software with metadata
- **Repository**: Collection of packages
- **Dependencies**: Required software components
- **Metadata**: Package information (version, description, dependencies)

**Benefits:**
- Security: Signed packages from trusted sources
- Convenience: Simple installation commands
- Maintenance: Easy updates and removal
- Consistency: Standardized installation process

### Part 2: APT Package Manager (Debian/Ubuntu) (15 minutes)

**APT Commands:**
```bash
# Update package database
sudo apt update

# Upgrade installed packages
sudo apt upgrade

# Install package
sudo apt install package_name

# Remove package
sudo apt remove package_name

# Remove package and configuration files
sudo apt purge package_name

# Search for packages
apt search keyword

# Show package information
apt show package_name

# List installed packages
apt list --installed

# Clean package cache
sudo apt autoremove
sudo apt autoclean
```

**Common APT Examples:**
```bash
# Install development tools
sudo apt install build-essential

# Install text editor
sudo apt install vim

# Install system monitoring tool
sudo apt install htop

# Install network utilities
sudo apt install net-tools

# Remove package
sudo apt remove vim
```

**Repository Management:**
```bash
# Add repository (example)
sudo add-apt-repository ppa:repository_name

# Edit sources list
sudo nano /etc/apt/sources.list

# Update after adding repository
sudo apt update
```

### Part 3: YUM/DNF Package Manager (Red Hat/CentOS/Fedora) (10 minutes)

**YUM Commands (CentOS 7 and earlier):**
```bash
# Update package database
sudo yum update

# Install package
sudo yum install package_name

# Remove package
sudo yum remove package_name

# Search for packages
yum search keyword

# Show package information
yum info package_name

# List installed packages
yum list installed

# Clean cache
sudo yum clean all
```

**DNF Commands (Fedora, CentOS 8+):**
```bash
# Update system
sudo dnf update

# Install package
sudo dnf install package_name

# Remove package
sudo dnf remove package_name

# Search packages
dnf search keyword

# Show package info
dnf info package_name

# List installed
dnf list installed
```

### Part 4: RPM and Alternative Package Managers (10 minutes)

**RPM (Red Hat Package Manager):**
```bash
# Install RPM package
sudo rpm -i package.rpm

# Upgrade package
sudo rpm -U package.rpm

# Remove package
sudo rpm -e package_name

# Query installed packages
rpm -qa

# Query package information
rpm -qi package_name
```

**Alternative Package Managers:**
- **Snap**: Universal packages
  ```bash
  sudo snap install package_name
  snap list
  sudo snap remove package_name
  ```

- **Flatpak**: Sandboxed applications
  ```bash
  flatpak install package_name
  flatpak list
  flatpak uninstall package_name
  ```

## Activities

### Activity 1: Package Manager Identification (5 minutes)

**Exercise: Determine Your Package Manager**
```bash
# Check which package manager is available
which apt && echo "APT available"
which yum && echo "YUM available"
which dnf && echo "DNF available"
which pacman && echo "Pacman available"

# Check distribution
cat /etc/os-release
```

### Activity 2: Package Database and System Updates (10 minutes)

**Exercise 1: Update Package Database**
```bash
# For APT systems (Ubuntu/Debian)
sudo apt update

# For YUM systems (CentOS 7)
sudo yum check-update

# For DNF systems (Fedora/CentOS 8+)
sudo dnf check-update
```

**Exercise 2: System Upgrade**
```bash
# For APT systems
sudo apt upgrade
# Review what will be upgraded, then proceed

# For YUM systems
sudo yum update

# For DNF systems
sudo dnf upgrade
```

### Activity 3: Software Installation Practice (20 minutes)

**Exercise 1: Install Basic Utilities**

**For APT (Ubuntu/Debian):**
```bash
# Install tree (directory visualization)
sudo apt install tree

# Test installation
tree /etc

# Install curl (data transfer tool)
sudo apt install curl

# Test installation
curl --version
```

**For YUM/DNF (Red Hat based):**
```bash
# Install tree
sudo yum install tree
# or
sudo dnf install tree

# Install curl
sudo yum install curl
# or
sudo dnf install curl
```

**Exercise 2: Package Information and Search**
```bash
# Search for text editors
apt search editor
# or
yum search editor
# or
dnf search editor

# Get information about a package
apt show nano
# or
yum info nano
# or
dnf info nano

# List installed packages
apt list --installed | grep -i editor
# or
yum list installed | grep -i editor
```

**Exercise 3: Software Removal**
```bash
# Remove a package (use one you just installed)
sudo apt remove tree
# or
sudo yum remove tree
# or
sudo dnf remove tree

# Verify removal
tree  # Should show "command not found"

# Reinstall for practice
sudo apt install tree
# or
sudo yum install tree
```

### Activity 4: Repository Management (15 minutes)

**Exercise 1: Repository Information**
```bash
# For APT: View repository sources
cat /etc/apt/sources.list
ls /etc/apt/sources.list.d/

# For YUM: View repository configuration
ls /etc/yum.repos.d/
# or for DNF
ls /etc/yum.repos.d/
```

**Exercise 2: Package Cache Management**
```bash
# For APT: Clean package cache
sudo apt autoremove
sudo apt autoclean

# Check disk space before and after
df -h

# For YUM/DNF: Clean cache
sudo yum clean all
# or
sudo dnf clean all
```

## Practical Exercises

### Exercise 1: Software Installation Project
Install a complete development environment:
- [ ] Install git version control
- [ ] Install a programming language (python3, nodejs)
- [ ] Install a text editor with syntax highlighting
- [ ] Verify all installations work

### Exercise 2: System Maintenance
Perform routine system maintenance:
- [ ] Update package database
- [ ] Check for available upgrades
- [ ] Upgrade system packages
- [ ] Clean package cache
- [ ] Remove unnecessary packages

### Exercise 3: Package Investigation
Research and document:
- [ ] Find 3 packages in your repository for system monitoring
- [ ] Compare package sizes and dependencies
- [ ] Read package descriptions and choose best option
- [ ] Install and test chosen package

## Common Issues and Solutions

### Package Manager Problems:
- **Lock errors**: Another package manager instance running
  ```bash
  sudo killall apt apt-get dpkg
  sudo dpkg --configure -a
  ```
- **Broken dependencies**: Use package manager to fix
  ```bash
  sudo apt --fix-broken install
  ```
- **Repository errors**: Update package database
  ```bash
  sudo apt update
  ```

### Installation Issues:
- **Package not found**: Check spelling, update database
- **Permission denied**: Use sudo for installation
- **Disk space**: Clean cache, remove unnecessary packages
- **Network errors**: Check internet connection

### Best Practices:
- Always update package database before installing
- Read package descriptions before installing
- Keep system updated regularly
- Remove unused packages periodically
- Use official repositories when possible

## Assessment Questions

### Quick Check (5 minutes)
1. What is the difference between `apt update` and `apt upgrade`?
2. How do you search for a package using apt?
3. What's the difference between `remove` and `purge`?
4. Why should you use package managers instead of downloading software directly?
5. How do you clean the package cache?

### Practical Assessment
Students should demonstrate:
- [ ] Update package database
- [ ] Search for and install a package
- [ ] View package information
- [ ] Remove a package safely
- [ ] Perform system updates

## Homework Assignment
1. Install 3 new useful applications using your package manager
2. Research and document your distribution's main repositories
3. Create a script that updates your system and cleans cache
4. Practice finding alternatives to Windows/Mac software in Linux repositories
5. Set up automatic security updates (research for your distribution)

## Safety Reminders
- Always use sudo with package management commands
- Read what will be installed/removed before confirming
- Don't remove essential system packages
- Keep regular backups before major system updates
- Use trusted repositories only

## Next Session Preview
Session 8 will cover networking basics, shell scripting introduction, and system administration fundamentals. This final session will prepare students for continued Linux learning and potential career paths.