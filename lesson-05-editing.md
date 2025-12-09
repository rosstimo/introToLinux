# Session 5: Text Editing and File Permissions

**Duration:** 50 minutes  
**Prerequisites:** Completed Sessions 1-4, comfortable with file operations

## Learning Objectives

By the end of this session, students will be able to:
- Use command-line text editors (nano and vim basics)
- Understand Linux file permission system
- Modify file permissions and ownership
- Create and edit configuration files safely

## Materials Needed
- Linux system with terminal access
- Text editor reference cards
- File permissions chart
- Sample configuration files

## Session Outline

### Opening Review (5 minutes)
- Review file creation and navigation
- Quick check: create and list files
- Introduction to text editing needs

### Part 1: Text Editors Overview (10 minutes)

**Why Command-Line Text Editors?**
- Edit configuration files
- Work on servers without GUI
- Faster for quick edits
- Essential for system administration

**Common Text Editors:**
- **nano**: Beginner-friendly, intuitive
- **vim/vi**: Powerful, modal editor
- **emacs**: Extensible, feature-rich
- **gedit**: Graphical (GUI-based)

### Part 2: Nano Text Editor (15 minutes)

**Starting Nano:**
```bash
nano filename.txt        # Create or edit file
nano                     # Start with empty file
nano -w filename         # No word wrap
```

**Nano Interface:**
- Text editing area (main screen)
- Status line (bottom)
- Command shortcuts (bottom)

**Essential Nano Commands:**
- **Ctrl+O**: Save file (Write Out)
- **Ctrl+X**: Exit nano
- **Ctrl+K**: Cut/delete line
- **Ctrl+U**: Paste line
- **Ctrl+W**: Search text
- **Ctrl+\**: Replace text
- **Ctrl+G**: Help system
- **Ctrl+C**: Show cursor position

**Navigation in Nano:**
- Arrow keys: Move cursor
- Page Up/Down: Scroll pages
- Ctrl+A: Beginning of line
- Ctrl+E: End of line
- Ctrl+Y: Previous page
- Ctrl+V: Next page

### Part 3: Vim Basics (10 minutes)

**Vim Modes:**
- **Normal mode**: Navigation and commands (default)
- **Insert mode**: Text editing
- **Command mode**: File operations

**Starting Vim:**
```bash
vim filename.txt         # Create or edit file
vi filename.txt          # Same as vim on most systems
```

**Essential Vim Commands:**
- **i**: Enter insert mode
- **Esc**: Return to normal mode
- **:w**: Save file
- **:q**: Quit vim
- **:wq**: Save and quit
- **:q!**: Quit without saving

**Basic Navigation (Normal Mode):**
- **h,j,k,l**: Left, down, up, right
- **0**: Beginning of line
- **$**: End of line
- **gg**: Top of file
- **G**: Bottom of file

### Part 4: File Permissions (15 minutes)

**Understanding Permissions:**
Every file and directory has three permission types for three categories of users:

**Permission Types:**
- **r** (read): View file contents or list directory
- **w** (write): Modify file or create/delete in directory
- **x** (execute): Run file as program or access directory

**User Categories:**
- **User (u)**: File owner
- **Group (g)**: Group members
- **Other (o)**: Everyone else

**Permission Display:**
```bash
ls -l filename
-rw-r--r-- 1 user group 1234 Jan 15 10:30 filename
```

**Breaking down `-rw-r--r--`:**
- First character: File type (`-` = file, `d` = directory)
- Next 3: User permissions (`rw-`)
- Next 3: Group permissions (`r--`)
- Last 3: Other permissions (`r--`)

**Octal Notation:**
```
r = 4, w = 2, x = 1
rwx = 4+2+1 = 7
r-x = 4+0+1 = 5
r-- = 4+0+0 = 4

Common combinations:
755 = rwxr-xr-x (executable files)
644 = rw-r--r-- (text files)
600 = rw------- (private files)
777 = rwxrwxrwx (all permissions - rarely used)
```

**Changing Permissions:**
```bash
chmod 644 filename              # Set specific permissions
chmod u+x filename              # Add execute for user
chmod g-w filename              # Remove write for group
chmod o-r filename              # Remove read for others
chmod +x filename               # Add execute for all
```

**Changing Ownership:**
```bash
chown user:group filename       # Change owner and group
chown user filename             # Change owner only
chgrp group filename            # Change group only
```

## Activities

### Activity 1: Nano Editing Practice (15 minutes)

**Exercise 1: Create and Edit a Text File**
```bash
# Create a new file
nano my_notes.txt

# Type this content:
Linux Commands Session 5
========================

Text Editors:
- nano: User-friendly
- vim: Powerful but complex

File Permissions:
- Read, Write, Execute
- User, Group, Other

# Save with Ctrl+O, Exit with Ctrl+X
```

**Exercise 2: Advanced Nano Features**
```bash
# Edit existing file
nano my_notes.txt

# Practice these operations:
# 1. Search for "nano" using Ctrl+W
# 2. Replace "complex" with "advanced" using Ctrl+\
# 3. Cut a line using Ctrl+K
# 4. Paste it elsewhere using Ctrl+U
# 5. Save and exit
```

### Activity 2: Basic Vim Practice (10 minutes)

**Exercise 1: Vim Survival Skills**
```bash
# Create file with vim
vim practice.txt

# Follow these steps:
# 1. Press 'i' to enter insert mode
# 2. Type: "Learning vim basics"
# 3. Press Esc to return to normal mode
# 4. Type ':w' to save
# 5. Type ':q' to quit

# Alternative: Type ':wq' to save and quit in one command
```

**Exercise 2: Vim Navigation**
```bash
# Open existing file
vim my_notes.txt

# Practice navigation (in normal mode):
# - Use h,j,k,l to move around
# - Press 'gg' to go to top
# - Press 'G' to go to bottom
# - Press ':q' to quit without changes
```

### Activity 3: File Permissions Analysis (15 minutes)

**Exercise 1: Understanding Current Permissions**
```bash
# Create test files
touch file1.txt file2.txt script.sh
mkdir testdir

# Check permissions
ls -l

# Create a file with content
echo "echo 'Hello World'" > script.sh

# Try to execute
./script.sh  # This will fail - no execute permission
```

**Exercise 2: Modifying Permissions**
```bash
# Make script executable
chmod +x script.sh
ls -l script.sh

# Execute the script
./script.sh

# Practice different permission settings
chmod 644 file1.txt    # Standard text file
chmod 755 script.sh    # Executable script
chmod 600 file2.txt    # Private file

# Verify changes
ls -l
```

**Exercise 3: Directory Permissions**
```bash
# Check directory permissions
ls -ld testdir

# Modify directory permissions
chmod 755 testdir      # Standard directory
ls -ld testdir

# Create file in directory
touch testdir/inner.txt
ls -l testdir/
```

### Activity 4: Configuration File Editing (10 minutes)

**Exercise: Edit a Safe Configuration File**
```bash
# Create a sample configuration file
nano ~/.bash_aliases

# Add these lines:
alias ll='ls -la'
alias la='ls -A'
alias l='ls -CF'
alias ..='cd ..'
alias ...='cd ../..'

# Save and exit
# Reload configuration
source ~/.bash_aliases

# Test new aliases
ll
```

## Practical Exercises

### Exercise 1: Text Editor Comparison
Create the same file using both nano and vim:
1. Content: List of 10 Linux commands learned so far
2. Practice saving and editing in both editors
3. Compare ease of use and functionality

### Exercise 2: Permission Security Scenarios
Set appropriate permissions for these file types:
- [ ] Personal diary (only you can read/write)
- [ ] Shared document (group can read, you can write)
- [ ] Public script (everyone can read/execute, you can write)
- [ ] Backup directory (only you can access)

### Exercise 3: Configuration Management
Create and edit these configuration files:
- [ ] Personal aliases file
- [ ] Simple script with proper permissions
- [ ] Text file with project notes
- [ ] Directory structure for organized files

## Common Issues and Solutions

### Text Editor Problems:
- **nano: Can't save file**: Check file permissions and disk space
- **vim: Stuck in insert mode**: Press Esc to return to normal mode
- **vim: Can't quit**: Use `:q!` to force quit without saving

### Permission Issues:
- **Permission denied**: Check if you own the file or have appropriate permissions
- **chmod not working**: May need sudo for system files
- **Can't execute script**: Check execute permission and shebang line

### Best Practices:
- Always backup configuration files before editing
- Use nano for beginners, gradually learn vim
- Set restrictive permissions for sensitive files
- Test scripts after making executable

## Assessment Questions

### Quick Check (5 minutes)
1. How do you save a file in nano?
2. What are the three types of file permissions?
3. What does chmod 755 mean?
4. How do you enter insert mode in vim?
5. What's the difference between user, group, and other permissions?

### Practical Assessment
Students should demonstrate:
- [ ] Create and edit files in nano
- [ ] Basic vim operations (open, edit, save, quit)
- [ ] Read and interpret file permissions
- [ ] Change file permissions with chmod
- [ ] Create executable scripts

## Homework Assignment
1. Practice both nano and vim for 20 minutes each
2. Create a personal cheat sheet for both editors
3. Set up a proper directory structure with appropriate permissions
4. Write a simple shell script and make it executable
5. Explore vim tutorial: Run `vimtutor` command

## Safety Reminders
- Always backup important files before editing
- Be careful with permission changes on system files
- Don't use sudo unless specifically instructed
- Test changes in safe environment first

## Next Session Preview
Session 6 will cover process management and system monitoring. Students will learn to view running processes, control jobs, and monitor system resources using commands like `ps`, `top`, `jobs`, and `kill`.