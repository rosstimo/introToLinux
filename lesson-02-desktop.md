# Session 2: Linux Desktop Environment and Basic Navigation

**Duration:** 50 minutes  
**Prerequisites:** Completed Session 1, Linux system installed and running

## Learning Objectives

By the end of this session, students will be able to:
- Navigate different Linux desktop environments (GNOME, KDE, XFCE)
- Understand the Filesystem Hierarchy Standard (FHS)
- Use the graphical file manager effectively
- Launch applications and access system settings

## Materials Needed
- Linux system (installed in Session 1)
- Internet connection
- Filesystem hierarchy reference chart

## Session Outline

### Opening Review (5 minutes)
- Quick recap of Session 1 concepts
- Check that all students have Linux running
- Address any installation issues

### Part 1: Desktop Environments (15 minutes)

**Major Desktop Environments:**

#### GNOME
- Default in Ubuntu, Fedora
- Modern, clean interface
- Activities overview
- Extensions for customization

#### KDE Plasma
- Highly customizable
- Traditional desktop metaphor
- Widgets and themes
- Resource-intensive but feature-rich

#### XFCE
- Lightweight and fast
- Traditional layout
- Good for older hardware
- Moderate customization options

**Navigation Elements:**
- Panel/taskbar
- Application launcher
- System tray
- Workspace switcher
- File manager integration

### Part 2: Filesystem Hierarchy Standard (20 minutes)

**Root Directory (/) Structure:**

```
/
├── bin/          # Essential user binaries
├── boot/         # Boot loader files
├── dev/          # Device files
├── etc/          # System configuration files
├── home/         # User home directories
├── lib/          # Shared libraries
├── media/        # Removable media mount points
├── mnt/          # Temporary mount points
├── opt/          # Optional software packages
├── proc/         # Process information (virtual)
├── root/         # Root user home directory
├── run/          # Runtime data
├── sbin/         # System binaries
├── sys/          # System information (virtual)
├── tmp/          # Temporary files
├── usr/          # User programs and data
└── var/          # Variable data (logs, cache)
```

**Key Directory Purposes:**
- **/home**: User personal directories (`/home/username`)
- **/etc**: Configuration files for system and applications
- **/bin** and **/usr/bin**: Executable programs/commands
- **/var/log**: System and application log files
- **/tmp**: Temporary files (often cleared on reboot)

### Part 3: Graphical File Manager (10 minutes)

**Common File Managers:**
- **Nautilus** (GNOME Files)
- **Dolphin** (KDE)
- **Thunar** (XFCE)

**Essential Features:**
- Address bar navigation
- Sidebar bookmarks
- View options (list, grid, details)
- File operations (copy, move, delete)
- Properties and permissions
- Search functionality
- Hidden file visibility (Ctrl+H)

## Activities

### Activity 1: Desktop Environment Exploration (15 minutes)
**Individual Practice:**
1. **Application Launcher**: Find and open different applications
   - Web browser
   - Text editor
   - Calculator
   - System settings

2. **Panel Customization**: 
   - Add shortcuts to favorites
   - Explore system tray icons
   - Access notification area

3. **Workspace Navigation**:
   - Create multiple workspaces
   - Switch between workspaces
   - Move applications between workspaces

### Activity 2: File Manager Navigation Exercise (20 minutes)
**Guided Practice:**

**Exercise 1: Directory Exploration**
1. Open file manager
2. Navigate to root directory (/)
3. Explore each major directory:
   - Click on /home and find your user directory
   - Visit /etc and look at configuration files
   - Check /bin for executable programs
   - Examine /var/log for system logs

**Exercise 2: File Operations**
1. Create a new folder in your home directory called "LinuxPractice"
2. Create a text file inside this folder
3. Copy the file to Desktop
4. Rename the copied file
5. Delete the file from Desktop

**Exercise 3: View Customization**
1. Change view mode (list ↔ grid ↔ details)
2. Show hidden files (Ctrl+H)
3. Sort files by different criteria (name, date, size)
4. Use search function to find files

### Activity 3: Application Installation via GUI (10 minutes)
**Software Center Practice:**
1. Open software center/package manager
2. Search for a simple application (e.g., calculator, text editor)
3. Review application information
4. Install the application
5. Launch the newly installed application
6. Locate it in the application menu

### Activity 4: System Settings Configuration (5 minutes)
**Settings Exploration:**
1. Open system settings
2. Explore different categories:
   - Display settings (resolution, orientation)
   - Network settings (WiFi, wired connections)
   - User accounts
   - Date and time
   - Appearance (themes, wallpaper)

## Practical Exercises

### Exercise 1: Scavenger Hunt
Find the following using the file manager:
- [ ] Your user's Documents folder
- [ ] The system's main configuration directory
- [ ] Where programs are typically installed
- [ ] The temporary files directory
- [ ] System log files location

### Exercise 2: Desktop Customization
Customize your desktop:
- [ ] Change wallpaper
- [ ] Add application shortcuts to favorites
- [ ] Modify panel/taskbar arrangement
- [ ] Set up additional workspaces

## Assessment Questions

### Quick Check (5 minutes)
1. What is the root directory in Linux?
2. Where are user home directories typically located?
3. Which directory contains system configuration files?
4. Name three different Linux desktop environments
5. How do you show hidden files in most file managers?

## Common Issues and Solutions

### File Manager Problems:
- **Cannot access certain folders**: Permission restrictions - normal behavior
- **Hidden files not showing**: Press Ctrl+H or check view options
- **Slow file operations**: May indicate disk issues or low system resources

### Desktop Environment Issues:
- **Missing applications**: Check if properly installed via software center
- **Customization not saving**: May need to log out and back in
- **Performance problems**: Consider switching to lighter desktop environment

## Homework Assignment
1. Spend 30 minutes exploring your file system
2. Create a folder structure for organizing files:
   ```
   ~/LinuxCourse/
   ├── Session1/
   ├── Session2/
   ├── Practice/
   └── Notes/
   ```
3. Take a screenshot of your customized desktop
4. Install one new application using the software center

## Next Session Preview
Session 3 will introduce the command line interface. Students should be comfortable with graphical navigation before moving to text-based commands. We'll learn how to access the terminal and execute basic commands.