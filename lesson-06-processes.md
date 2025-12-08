# Session 6: Process Management and System Monitoring

**Duration:** 50 minutes  
**Prerequisites:** Completed Sessions 1-5, comfortable with command line and file operations

## Learning Objectives

By the end of this session, students will be able to:
- Understand processes and process IDs (PIDs)
- Monitor running processes using ps, top, and htop
- Control foreground and background processes
- Manage jobs and kill processes when necessary
- Monitor basic system resources

## Materials Needed
- Linux system with terminal access
- Process monitoring reference sheet
- Sample programs to run for practice

## Session Outline

### Opening Review (5 minutes)
- Review file permissions and text editing
- Check that students can open multiple terminals
- Introduction to multi-tasking concepts

### Part 1: Understanding Processes (15 minutes)

**What is a Process?**
- Running instance of a program
- Has unique Process ID (PID)
- Uses system resources (CPU, memory)
- Can create child processes
- Has states: running, sleeping, stopped, zombie

**Process Hierarchy:**
- All processes descend from init (PID 1)
- Parent-child relationships
- Process inheritance

**Process Information:**
- **PID**: Process ID (unique identifier)
- **PPID**: Parent Process ID
- **UID**: User ID (owner of process)
- **CPU %**: CPU usage percentage
- **Memory %**: Memory usage percentage
- **State**: Current process state

### Part 2: Process Monitoring Commands (20 minutes)

#### `ps` - Process Status
```bash
ps                      # Show your processes
ps aux                  # Show all processes (detailed)
ps -ef                  # Show all processes (different format)
ps -u username          # Show processes for specific user
ps -C firefox           # Show processes by command name
```

**ps aux Output Explanation:**
```
USER  PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
john 1234  2.5  1.2 123456  7890 pts/0    S    10:30   0:05 firefox
```
- **USER**: Process owner
- **PID**: Process ID
- **%CPU**: CPU usage percentage
- **%MEM**: Memory usage percentage
- **VSZ**: Virtual memory size
- **RSS**: Resident memory size
- **TTY**: Terminal associated with process
- **STAT**: Process state (S=sleeping, R=running, Z=zombie)
- **START**: Start time
- **TIME**: Total CPU time used
- **COMMAND**: Command name

#### `top` - Real-time Process Monitor
```bash
top                     # Interactive process monitor
top -u username         # Show processes for specific user
```

**Top Interface:**
- Header: System information (uptime, users, load average)
- Process list: Real-time updating process information
- Interactive commands:
  - **q**: Quit
  - **k**: Kill process (enter PID)
  - **r**: Renice process (change priority)
  - **M**: Sort by memory usage
  - **P**: Sort by CPU usage
  - **1**: Show individual CPU cores

#### `htop` - Enhanced Process Monitor
```bash
htop                    # Interactive, colorful process monitor
```

**htop Features:**
- Colorful, user-friendly interface
- Mouse support
- Tree view of processes
- Easy process management
- System resource graphs

### Part 3: Foreground vs Background Processes (10 minutes)

**Foreground Processes:**
- Run in terminal and block command prompt
- Receive keyboard input
- Can be interrupted with Ctrl+C
- Example: Text editor, long-running command

**Background Processes:**
- Run independently of terminal
- Don't block command prompt
- Continue running even if terminal closes (with nohup)
- Identified by job number

**Running Commands in Background:**
```bash
command &               # Start command in background
firefox &               # Start Firefox in background
sleep 100 &             # Sleep command in background
```

**Job Control Commands:**
```bash
jobs                    # List current jobs
jobs -l                 # List jobs with PIDs
bg %1                   # Send job 1 to background
fg %1                   # Bring job 1 to foreground
```

**Process Control:**
```bash
Ctrl+C                  # Interrupt (terminate) foreground process
Ctrl+Z                  # Suspend foreground process
bg                      # Resume suspended process in background
fg                      # Resume suspended process in foreground
```

## Activities

### Activity 1: Process Viewing and Analysis (15 minutes)

**Exercise 1: Basic Process Monitoring**
```bash
# View your current processes
ps

# View all processes
ps aux

# Find specific processes
ps aux | grep firefox
ps aux | grep bash

# Check your user's processes
ps -u $(whoami)
```

**Exercise 2: Understanding Process Information**
```bash
# Run top and observe
top

# Practice top commands:
# - Press 'M' to sort by memory
# - Press 'P' to sort by CPU
# - Press 'q' to quit

# Try htop if available
htop
```

**Exercise 3: Process Tree**
```bash
# View process tree
ps -ef --forest
# or
pstree

# Find parent-child relationships
ps -o pid,ppid,command
```

### Activity 2: Background and Foreground Job Practice (15 minutes)

**Exercise 1: Background Processes**
```bash
# Start simple background jobs
sleep 30 &
sleep 60 &
sleep 90 &

# Check running jobs
jobs
jobs -l

# Check with ps
ps aux | grep sleep
```

**Exercise 2: Job Control**
```bash
# Start a foreground process
sleep 120

# Suspend it with Ctrl+Z
# (Press Ctrl+Z)

# Check jobs
jobs

# Resume in background
bg %1

# Bring back to foreground
fg %1

# Terminate with Ctrl+C
```

**Exercise 3: Long-running Background Task**
```bash
# Start a monitoring task in background
top &

# Start text editor in background
nano &

# List all jobs
jobs

# Bring nano to foreground to use it
fg %2

# Exit nano and return to command line
```

### Activity 3: Process Control Practice (15 minutes)

**Exercise 1: Process Identification**
```bash
# Start multiple instances of same program
sleep 300 &
sleep 400 &
sleep 500 &

# Find their PIDs
ps aux | grep sleep
jobs -l

# Note the different PIDs
```

**Exercise 2: Killing Processes**
```bash
# Kill by PID
kill 1234  # Replace with actual PID

# Kill by job number
kill %1

# Force kill if necessary
kill -9 1234  # Replace with actual PID

# Kill all instances of a command
killall sleep
```

**Exercise 3: System Monitoring**
```bash
# Monitor system resources
top

# Check system load
uptime

# Check memory usage
free -h

# Check disk usage
df -h
```

### Activity 4: System Monitoring Session (5 minutes)

**Exercise: Resource Monitoring**
```bash
# Open multiple terminals and run:
# Terminal 1: htop or top
# Terminal 2: Create some load
for i in {1..5}; do sleep 60 & done

# Terminal 3: Monitor the load
ps aux | grep sleep
jobs

# Clean up all background jobs
killall sleep
```

## Practical Exercises

### Exercise 1: Process Investigation
1. Find all processes running as your user
2. Identify the process using the most CPU
3. Identify the process using the most memory
4. Find the parent process of your current shell

### Exercise 2: Job Management
1. Start 3 different background jobs
2. List all jobs with their status
3. Bring one job to foreground
4. Suspend it and move it back to background
5. Kill all jobs

### Exercise 3: System Monitoring
1. Monitor system for 2 minutes using top
2. Note the system load average
3. Find processes using more than 1% CPU
4. Check available memory and disk space

## Common Issues and Solutions

### Process Management Problems:
- **Can't kill process**: Try `kill -9 PID` for force kill
- **Process won't start in background**: Check command syntax and `&` placement
- **Lost background job**: Use `jobs` to list or `ps aux` to find PID

### Monitoring Issues:
- **top/htop consuming resources**: Normal behavior, exit when done monitoring
- **Can't see all processes**: Use `ps aux` instead of just `ps`
- **Permission denied killing process**: Can only kill your own processes

### Best Practices:
- Regularly monitor system resources
- Clean up unnecessary background processes
- Use Ctrl+C instead of kill when possible
- Check process status before killing

## Assessment Questions

### Quick Check (5 minutes)
1. What is a PID?
2. How do you start a command in the background?
3. What's the difference between Ctrl+C and Ctrl+Z?
4. How do you list current jobs?
5. What command shows real-time process information?

### Practical Assessment
Students should demonstrate:
- [ ] Use ps to view processes
- [ ] Monitor processes with top or htop
- [ ] Start and manage background jobs
- [ ] Control foreground/background processes
- [ ] Kill processes safely

## Homework Assignment
1. Monitor your system for 10 minutes and document:
   - Highest CPU usage process
   - Highest memory usage process
   - Total number of running processes
2. Practice job control with various commands
3. Create a simple script that runs in background
4. Research process states and what they mean

## Safety Reminders
- Only kill your own processes
- Be careful with `kill -9` (force kill)
- Don't kill system processes (low PIDs)
- Monitor system resources to avoid overload

## Next Session Preview
Session 7 will cover package management and software installation. Students will learn to use package managers like apt, yum, and rpm to install, update, and remove software packages.