# Session 4: File and Directory Operations

**Duration:** 50 minutes  
**Prerequisites:** Completed Sessions 1-3, comfortable with basic command line

## Learning Objectives

By the end of this session, students will be able to:
- Navigate the filesystem using command line
- Create, copy, move, and delete files and directories
- Understand absolute vs. relative paths
- Use file listing and viewing commands effectively

## Materials Needed
- Linux system with terminal access
- File operations reference card
- Practice directory structure

## Session Outline

### Opening Review (5 minutes)
- Review basic command syntax
- Check comfort level with terminal
- Quick practice: pwd, whoami, date

### Part 1: Navigation Commands (15 minutes)

**Essential Navigation Commands:**

#### `pwd` - Print Working Directory
```bash
pwd
# Output: /home/username
```
- Shows your current location in filesystem
- Absolute path from root (/)

#### `cd` - Change Directory
```bash
cd [directory]
cd                    # Go to home directory
cd ~                  # Go to home directory
cd /                  # Go to root directory
cd ..                 # Go up one level
cd ../..              # Go up two levels
cd -                  # Go to previous directory
cd /home/username     # Go to specific directory
```

#### `ls` - List Directory Contents
```bash
ls                    # Basic listing
ls -l                 # Long format (detailed)
ls -a                 # Show hidden files
ls -la                # Long format + hidden files
ls -lh                # Human-readable file sizes
ls -t                 # Sort by modification time
ls -r                 # Reverse order
ls /etc               # List specific directory
```

### Part 2: Paths - Absolute vs. Relative (10 minutes)

**Absolute Paths:**
- Start with `/` (root directory)
- Complete path from filesystem root
- Examples:
  - `/home/username/Documents`
  - `/etc/passwd`
  - `/usr/bin/firefox`

**Relative Paths:**
- Start from current directory
- No leading `/`
- Special symbols:
  - `.` = current directory
  - `..` = parent directory
  - `~` = home directory

**Examples:**
```bash
# If currently in /home/username
cd Documents          # Relative path
cd ./Documents        # Explicit relative path
cd /home/username/Documents  # Absolute path

# Navigate using relative paths
cd ..                 # Go to /home
cd ../..              # Go to /
cd ~                  # Go to home directory
```

### Part 3: File and Directory Operations (20 minutes)

#### Creating Directories
```bash
mkdir directory_name              # Create single directory
mkdir dir1 dir2 dir3             # Create multiple directories
mkdir -p path/to/nested/dirs     # Create nested directories
mkdir "directory with spaces"     # Directory with spaces
```

#### Creating Files
```bash
touch filename.txt               # Create empty file
touch file1.txt file2.txt       # Create multiple files
touch "file with spaces.txt"     # File with spaces
```

#### Copying Files and Directories
```bash
cp source_file destination_file  # Copy file
cp file.txt backup.txt          # Copy with new name
cp file.txt /home/user/         # Copy to directory
cp -r directory/ backup/        # Copy directory recursively
cp *.txt backup/                # Copy all .txt files
```

#### Moving and Renaming
```bash
mv old_name new_name            # Rename file/directory
mv file.txt /home/user/         # Move file to directory
mv dir1/ dir2/                  # Move directory
mv *.doc Documents/             # Move all .doc files
```

#### Removing Files and Directories
```bash
rm filename                     # Remove file
rm file1 file2 file3           # Remove multiple files
rm *.tmp                       # Remove all .tmp files
rmdir empty_directory          # Remove empty directory
rm -r directory/               # Remove directory and contents
rm -rf directory/              # Force remove (be careful!)
```

**Safety Tips:**
- Always double-check `rm` commands
- Use `ls` to verify what you're deleting
- Consider using `mv` to trash folder instead
- Be extremely careful with `rm -rf`

## Activities

### Activity 1: Directory Navigation Practice (15 minutes)

**Exercise 1: Basic Navigation**
```bash
# Start from home directory
cd ~
pwd

# Navigate to root
cd /
ls
pwd

# Go back to home
cd ~
pwd

# Navigate using relative paths
cd ..
pwd
cd username  # Replace with your username
pwd
```

**Exercise 2: Path Practice**
```bash
# Create practice structure
cd ~
mkdir -p practice/documents/projects
mkdir -p practice/downloads
mkdir -p practice/backup

# Navigate using different path types
cd practice                    # Relative
cd /home/username/practice     # Absolute (adjust username)
cd documents                   # Relative
cd ../downloads               # Relative with ..
cd ~/practice/backup          # Using ~ shortcut
```

### Activity 2: File Creation and Manipulation (20 minutes)

**Exercise 1: Creating Practice Files**
```bash
# Create directory structure
cd ~
mkdir LinuxPractice
cd LinuxPractice

# Create some files
touch readme.txt
touch notes.md
touch todo.list
touch temp.tmp

# Create directories
mkdir documents
mkdir backup
mkdir projects

# Verify creation
ls -la
```

**Exercise 2: File Operations**
```bash
# Copy operations
cp readme.txt readme_backup.txt
cp notes.md documents/
cp *.txt backup/

# Move operations
mv todo.list documents/
mv temp.tmp backup/temp_old.tmp

# Verify results
ls
ls documents/
ls backup/
```

**Exercise 3: Advanced Operations**
```bash
# Create nested structure
mkdir -p projects/web/html
mkdir -p projects/web/css
mkdir -p projects/scripts

# Create files in nested structure
touch projects/web/html/index.html
touch projects/web/css/style.css
touch projects/scripts/backup.sh

# Copy entire directory
cp -r projects/ projects_backup/

# Verify structure
ls -R projects/
```

### Activity 3: File Viewing Commands (10 minutes)

**File Content Commands:**
```bash
# Create a sample file with content
echo "This is line 1" > sample.txt
echo "This is line 2" >> sample.txt
echo "This is line 3" >> sample.txt
echo "This is the last line" >> sample.txt

# View file contents
cat sample.txt                 # Display entire file
head sample.txt               # First 10 lines
tail sample.txt               # Last 10 lines
head -n 2 sample.txt          # First 2 lines
tail -n 1 sample.txt          # Last 1 line
```

### Activity 4: Path Resolution Practice (5 minutes)

**Exercise: Path Challenge**
Starting from your home directory, use both absolute and relative paths to:
1. Navigate to `/etc`
2. Return to home using 3 different methods
3. Go to `/usr/bin` and list contents
4. Navigate to your Documents folder (create if doesn't exist)

## Practical Exercises

### Exercise 1: File System Exploration
Navigate and explore these locations:
- [ ] Root directory (/)
- [ ] Your home directory
- [ ] /etc directory (system configuration)
- [ ] /usr/bin directory (user programs)
- [ ] /var/log directory (system logs)

### Exercise 2: Practice File Management
Create this directory structure in your home directory:
```
LinuxCourse/
├── Session1/
├── Session2/
├── Session3/
├── Session4/
├── Exercises/
│   ├── Basic/
│   └── Advanced/
└── Notes/
    ├── Commands.txt
    └── Tips.txt
```

### Exercise 3: File Operations Drill
Perform these operations:
- [ ] Create 5 text files in Exercises/Basic/
- [ ] Copy all files to Exercises/Advanced/
- [ ] Rename one file in Advanced/
- [ ] Move two files from Basic/ to Notes/
- [ ] Create backup of entire Exercises/ directory

## Common Issues and Solutions

### Navigation Problems:
- **Permission denied**: Normal for system directories, use `ls -l` to check permissions
- **No such file or directory**: Check spelling and path
- **cd command not working**: Ensure directory exists and you have access

### File Operation Issues:
- **cp: cannot create regular file**: Check destination permissions and space
- **rm: cannot remove**: File may be in use or permission protected
- **Directory not empty**: Use `rm -r` for directories with contents

### Best Practices:
- Always use `ls` to verify before destructive operations
- Use Tab completion to avoid typos
- Create backups before major file operations
- Use quotes for filenames with spaces

## Assessment Questions

### Quick Check (5 minutes)
1. What's the difference between absolute and relative paths?
2. How do you create a directory called "My Documents"?
3. What command removes an empty directory?
4. How do you copy a directory and all its contents?
5. What does the `..` symbol represent?

### Practical Assessment
Students should demonstrate:
- [ ] Navigate using both absolute and relative paths
- [ ] Create files and directories
- [ ] Copy, move, and rename files
- [ ] Use ls with various options
- [ ] Remove files safely

## Homework Assignment
1. Create a personal file organization structure in your home directory
2. Practice all commands learned today for 30 minutes
3. Create a simple text file documenting useful command combinations
4. Explore your system's directory structure (stay in safe areas)

## Safety Reminders
- **Never** use `rm -rf /` or similar destructive commands
- Always verify paths before using `rm` command
- Practice in your home directory until comfortable
- Keep backups of important files

## Next Session Preview
Session 5 will introduce text editing with nano and vim, plus file permissions. Students will learn to create and edit configuration files and understand Linux security through file permissions.