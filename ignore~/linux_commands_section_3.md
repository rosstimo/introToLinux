
# 3. System Monitoring and Management

## 3.1 Process and Resource Monitoring
- `top`: Real-time view of system processes and resource usage.
  ```bash
  top
  ```
- `htop`: More user-friendly process viewer (install if not available).
  ```bash
  htop
  ```
- `ps`: Show running processes.
  ```bash
  ps aux     # shows all processes
  ps -ef     # another commonly used format
  ```
- `kill`: Kill a process by its PID (process ID).
  ```bash
  kill PID         # sends SIGTERM to gracefully stop the process
  kill -9 PID      # force kill (use with caution)
  ```
- `free`: Display memory usage.
  ```bash
  free -h    # human-readable format
  ```

## 3.2 System Information
- `df`: Display disk space usage.
  ```bash
  df -h   # human-readable format
  ```
- `du`: Show disk usage for a file or directory.
  ```bash
  du -sh /path/to/directory   # summarize disk usage of a directory
  ```
- `uname`: Display system information.
  ```bash
  uname -a   # all available system information
  uname -r   # kernel version
  ```
