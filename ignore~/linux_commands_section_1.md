
# 1. Basic File and Directory Operations

## 1.1 Navigating Directories
- `ls`: List files and directories in the current directory.
  ```bash
  ls        # basic listing
  ls -l     # detailed listing (permissions, size, etc.)
  ls -a     # includes hidden files
  ```
- `cd`: Change directory.
  ```bash
  cd /path/to/directory   # move to a directory
  cd ..                   # move up one directory level
  cd ~                    # move to home directory
  ```
- `pwd`: Print working directory (shows the current directory path).
  ```bash
  pwd
  ```

## 1.2 File Management
- `touch`: Create an empty file or update the timestamp of an existing file.
  ```bash
  touch filename.txt
  ```
- `cp`: Copy files and directories.
  ```bash
  cp source_file destination_file
  cp -r /source_directory /destination_directory  # recursive copy for directories
  ```
- `mv`: Move or rename files.
  ```bash
  mv source_file destination_file  # move/rename file
  mv old_directory new_directory    # rename directory
  ```
- `rm`: Remove files and directories.
  ```bash
  rm filename.txt           # remove a file
  rm -r directory_name      # remove a directory and its contents
  rm -rf directory_name     # force remove directory (careful with this one!)
  ```
- `mkdir`: Create a new directory.
  ```bash
  mkdir new_directory
  ```
- `rmdir`: Remove an empty directory.
  ```bash
  rmdir empty_directory
  ```
