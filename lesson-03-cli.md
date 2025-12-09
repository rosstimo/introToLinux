# Session 3: Introduction to the Command Line

**Duration:** 50 minutes  
**Prerequisites:** Completed Sessions 1-2, comfortable with desktop navigation

## Learning Objectives

By the end of this session, students will be able to:
- Understand terminal and shell concepts
- Open and navigate the terminal application
- Execute basic commands with confidence
- Use help systems and manual pages
- Understand command syntax and structure

## Materials Needed
- Linux system with terminal access
- Command reference handout
- Practice exercise worksheet

## Session Outline

### Opening Review (5 minutes)
- Brief review of filesystem hierarchy
- Demonstrate accessing terminal from desktop
- Address any concerns about command line usage

### Part 1: Terminal and Shell Fundamentals (15 minutes)

**What is the Terminal?**
- Text-based interface to the operating system
- Faster and more powerful than GUI for many tasks
- Direct communication with the system
- Essential for system administration

**What is the Shell?**
- Program that interprets and executes commands
- Interface between user and kernel
- Common shells: bash, zsh, fish, sh
- Default shell in most Linux distributions: bash

**Opening the Terminal:**
- **GUI Method**: Applications → Utilities → Terminal
- **Keyboard Shortcut**: Ctrl+Alt+T (Ubuntu/GNOME)
- **Right-click**: "Open Terminal Here" in file manager

**Terminal Components:**
```
username@hostname:~$ 
```
- `username`: Current user
- `hostname`: Computer name
- `~`: Current directory (~ represents home directory)
- `$`: Regular user prompt (# for root user)

### Part 2: Basic Command Syntax (20 minutes)

**Command Structure:**
```
command [options] [arguments]
```

**Examples:**
- `ls` - basic command
- `ls -l` - command with option
- `ls -l /home` - command with option and argument
- `ls -la /home` - command with multiple options

**Important Concepts:**
- **Case sensitivity**: Linux commands are case-sensitive
- **Spaces matter**: Separate command, options, and arguments with spaces
- **Tab completion**: Press Tab to auto-complete commands and filenames
- **Command history**: Use up/down arrows to navigate previous commands

**Essential Commands for This Session:**
- `pwd` - Print Working Directory
- `whoami` - Display current username
- `date` - Show current date and time
- `cal` - Display calendar
- `echo` - Display text
- `clear` - Clear terminal screen
- `exit` - Close terminal

### Part 3: Getting Help (10 minutes)

**Manual Pages (man):**
```bash
man command_name
```
- `man ls` - Show manual for ls command
- Navigation in man pages:
  - Space: Next page
  - b: Previous page
  - q: Quit
  - /search_term: Search within manual

**Command Help Options:**
- `command --help` - Quick help summary
- `command -h` - Short help (some commands)
- `info command` - Info pages (alternative to man)

**Online Resources:**
- tldr pages: Simplified man pages
- Command line cheat sheets
- Distribution-specific documentation

## Activities

### Activity 1: Terminal Familiarization (10 minutes)
**Basic Exploration:**
1. Open terminal application
2. Observe the command prompt
3. Try these basic commands:
   ```bash
   whoami
   pwd
   date
   cal
   echo "Hello Linux!"
   ```
4. Use clear command to clean screen
5. Practice using Tab completion with commands

### Activity 2: Command Practice Session (15 minutes)
**Guided Practice:**

**Exercise 1: Understanding Your Environment**
```bash
# Display current user
whoami

# Show current directory
pwd

# Display system information
date
cal 2025
```

**Exercise 2: Using Echo Command**
```bash
# Simple text output
echo "Welcome to Linux"

# Display variables
echo $HOME
echo $USER
echo $SHELL
```

**Exercise 3: Command History**
1. Type several commands
2. Use up arrow to recall previous commands
3. Use down arrow to navigate forward
4. Edit a previous command and execute

### Activity 3: Manual Page Exploration (15 minutes)
**Help System Practice:**

**Exercise 1: Basic Man Pages**
```bash
# View manual for ls command
man ls

# Practice navigation:
# - Press Space for next page
# - Press 'b' for previous page
# - Type '/pattern' to search
# - Press 'q' to quit
```

**Exercise 2: Quick Help**
```bash
# Try help options
ls --help
date --help
cal --help
```

**Exercise 3: Command Discovery**
1. Use man to learn about these commands:
   - `man pwd`
   - `man echo`
   - `man clear`
2. Find one new option for each command
3. Test the new options

### Activity 4: Command Troubleshooting Practice (10 minutes)
**Common Scenarios:**

**Exercise 1: Fixing Typos**
- Type: `whomai` (incorrect)
- Read error message
- Correct to: `whoami`

**Exercise 2: Understanding Error Messages**
- Type: `ls /nonexistent`
- Analyze error message
- Use man page to understand ls behavior

**Exercise 3: Case Sensitivity**
- Try: `PWD` vs `pwd`
- Understand Linux case sensitivity

## Practical Exercises

### Exercise 1: Command Exploration
Complete these tasks using only the command line:
- [ ] Find your username
- [ ] Determine your current directory
- [ ] Display today's date
- [ ] Show this month's calendar
- [ ] Display a custom message using echo
- [ ] Clear the terminal screen

### Exercise 2: Help System Mastery
For each command, find one useful option using man pages:
- [ ] `ls` - find option to show detailed information
- [ ] `date` - find option to display time in different format
- [ ] `cal` - find option to display specific year
- [ ] `echo` - find option to interpret escape sequences

## Common Mistakes and Solutions

### Terminal Navigation Issues:
- **Command not found**: Check spelling and case
- **Permission denied**: May need sudo or check file permissions
- **Stuck in man page**: Press 'q' to quit
- **Terminal frozen**: Ctrl+C to interrupt, Ctrl+Z to suspend

### Best Practices:
- Always read error messages carefully
- Use Tab completion to avoid typos
- Start with simple commands before complex ones
- Don't be afraid to experiment in home directory

## Assessment Questions

### Quick Check (5 minutes)
1. What is the difference between terminal and shell?
2. What does the ~ symbol represent in the command prompt?
3. How do you access help for a command?
4. What happens when you press Tab while typing a command?
5. How do you clear the terminal screen?

### Practical Assessment
Students should demonstrate:
- [ ] Opening terminal application
- [ ] Executing basic commands (pwd, whoami, date)
- [ ] Using Tab completion
- [ ] Accessing man pages
- [ ] Navigating command history

## Homework Assignment
1. Practice the commands learned today for 20 minutes
2. Use man pages to explore these commands:
   - `history` (view command history)
   - `which` (locate command)
   - `type` (command information)
3. Create a text file listing 5 new things learned about the command line
4. Be prepared to demonstrate any command from today's session

## Safety Reminders
- Stay in your home directory for practice
- Avoid using `sudo` or `su` commands until later sessions
- Don't delete system files or directories
- Ask for help if unsure about a command's effect

## Next Session Preview
Session 4 will focus on file and directory operations using the command line. Students will learn to navigate, create, copy, move, and delete files and directories using commands like `cd`, `ls`, `mkdir`, `cp`, `mv`, and `rm`.