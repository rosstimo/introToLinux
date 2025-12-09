# Linux Command Reference Card

## Essential Commands for Beginners

### Navigation Commands
- `pwd` - Print working directory
- `cd [directory]` - Change directory
  - `cd ~` or `cd` - Go to home directory
  - `cd ..` - Go up one level
  - `cd -` - Go to previous directory
- `ls [options] [directory]` - List directory contents
  - `ls -l` - Long format (detailed)
  - `ls -a` - Show hidden files
  - `ls -la` - Long format + hidden files
  - `ls -lh` - Human-readable file sizes

### File Operations
- `touch filename` - Create empty file
- `mkdir dirname` - Create directory
  - `mkdir -p path/to/dirs` - Create nested directories
- `cp source destination` - Copy files/directories
  - `cp -r dir1 dir2` - Copy directory recursively
- `mv source destination` - Move/rename files/directories
- `rm filename` - Remove file
  - `rm -r dirname` - Remove directory recursively
  - `rm -rf dirname` - Force remove (dangerous!)
- `rmdir dirname` - Remove empty directory

### File Viewing
- `cat filename` - Display entire file
- `less filename` - View file page by page
- `head filename` - Show first 10 lines
  - `head -n 5 file` - Show first 5 lines
- `tail filename` - Show last 10 lines
  - `tail -n 5 file` - Show last 5 lines
  - `tail -f file` - Follow file changes

### Text Editing
#### Nano Editor
- `nano filename` - Open file in nano
- `Ctrl+O` - Save file
- `Ctrl+X` - Exit nano
- `Ctrl+K` - Cut line
- `Ctrl+U` - Paste line
- `Ctrl+W` - Search text
- `Ctrl+\` - Replace text

#### Vim Basics
- `vim filename` - Open file in vim
- `i` - Enter insert mode
- `Esc` - Return to normal mode
- `:w` - Save file
- `:q` - Quit vim
- `:wq` - Save and quit
- `:q!` - Quit without saving

### File Permissions
- `chmod 644 file` - Set file permissions (rw-r--r--)
- `chmod 755 file` - Set file permissions (rwxr-xr-x)
- `chmod +x file` - Add execute permission
- `chown user:group file` - Change ownership

**Permission Numbers:**
- 4 = read (r)
- 2 = write (w)
- 1 = execute (x)
- 7 = rwx, 6 = rw-, 5 = r-x, 4 = r--

### Process Management
- `ps` - Show your processes
- `ps aux` - Show all processes
- `top` - Real-time process monitor
- `htop` - Enhanced process monitor
- `jobs` - List current jobs
- `bg %1` - Send job to background
- `fg %1` - Bring job to foreground
- `kill PID` - Terminate process
- `killall name` - Kill all processes by name

### System Information
- `whoami` - Current username
- `hostname` - System hostname
- `uname -a` - System information
- `date` - Current date and time
- `uptime` - System uptime and load
- `df -h` - Disk usage (human readable)
- `free -h` - Memory usage (human readable)
- `lscpu` - CPU information

### Package Management
#### APT (Ubuntu/Debian)
- `sudo apt update` - Update package database
- `sudo apt upgrade` - Upgrade packages
- `sudo apt install package` - Install package
- `sudo apt remove package` - Remove package
- `apt search keyword` - Search packages
- `apt show package` - Show package info

#### YUM (CentOS/RHEL)
- `sudo yum update` - Update packages
- `sudo yum install package` - Install package
- `sudo yum remove package` - Remove package
- `yum search keyword` - Search packages

#### DNF (Fedora)
- `sudo dnf update` - Update packages
- `sudo dnf install package` - Install package
- `sudo dnf remove package` - Remove package
- `dnf search keyword` - Search packages

#### Pacman (Arch Linux)
- `sudo pacman -Syu` - Update system
- `sudo pacman -S package` - Install package
- `sudo pacman -R package` - Remove package
- `pacman -Ss keyword` - Search packages
- `pacman -Si package` - Show package info

### Network Commands
- `ping hostname` - Test connectivity
- `wget URL` - Download file
- `curl URL` - Transfer data from servers
- `ip addr show` - Show network interfaces
- `ss -tuln` - Show listening ports

### Help and Documentation
- `man command` - Manual page for command
- `command --help` - Quick help for command
- `which command` - Location of command
- `type command` - Information about command

### Keyboard Shortcuts
- `Ctrl+C` - Interrupt/cancel command
- `Ctrl+Z` - Suspend current process
- `Ctrl+D` - End of file/logout
- `Ctrl+L` - Clear screen (same as `clear`)
- `Tab` - Auto-complete commands/filenames
- `↑↓` - Navigate command history

### Special Characters
- `~` - Home directory
- `.` - Current directory
- `..` - Parent directory
- `/` - Root directory
- `*` - Wildcard (matches any characters)
- `?` - Wildcard (matches single character)
- `&` - Run command in background
- `|` - Pipe output to another command
- `>` - Redirect output to file (overwrite)
- `>>` - Redirect output to file (append)

### Common File Locations
- `/home/username` - User home directory
- `/etc` - System configuration files
- `/var/log` - System log files
- `/usr/bin` - User programs
- `/bin` - Essential system programs
- `/tmp` - Temporary files

### Safety Tips
- Always double-check `rm` commands
- Use `ls` to verify before destructive operations
- Keep backups of important files
- Be careful with `sudo` commands
- Practice in safe directories first

### Getting Help
- Read man pages: `man command`
- Use `--help` option: `command --help`
- Online documentation and tutorials
- Linux community forums and Q&A sites