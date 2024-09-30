
# 4. User and Permissions Management

## 4.1 User Management
- `whoami`: Show the current user.
  ```bash
  whoami
  ```
- `sudo`: Execute a command as superuser (administrator).
  ```bash
  sudo command
  sudo apt update   # example of updating package list (for Debian-based systems)
  ```
- `adduser` / `useradd`: Add a new user.
  ```bash
  sudo adduser new_user     # interactive, preferred method
  sudo useradd new_user     # needs manual configuration
  ```
- `passwd`: Change user password.
  ```bash
  passwd                # change current user’s password
  sudo passwd username  # change another user's password
  ```

## 4.2 File Permissions
- `chmod`: Change file permissions.
  ```bash
  chmod 755 file.sh      # set read/write/execute for owner, and read/execute for others
  chmod +x file.sh       # add executable permission
  ```
- `chown`: Change file owner and group.
  ```bash
  sudo chown user:group filename.txt
  ```
