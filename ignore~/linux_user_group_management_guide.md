
# Linux User and Group Management Guide

## Table of Contents
1. [User Management](#1-user-management)
   - [Adding a User](#11-adding-a-user)
   - [Setting a Password](#12-setting-a-password)
   - [Modifying a User](#13-modifying-a-user)
   - [Deleting a User](#14-deleting-a-user)
   - [Displaying User Information](#15-displaying-user-information)
2. [Group Management](#2-group-management)
   - [Adding a Group](#21-adding-a-group)
   - [Modifying a Group](#22-modifying-a-group)
   - [Deleting a Group](#23-deleting-a-group)
   - [Adding a User to a Group](#24-adding-a-user-to-a-group)
   - [Removing a User from a Group](#25-removing-a-user-from-a-group)
   - [Displaying Group Information](#26-displaying-group-information)
3. [User and Group Permissions](#3-user-and-group-permissions)
   - [Understanding File Permissions](#31-understanding-file-permissions)
   - [Changing File Permissions](#32-changing-file-permissions)
   - [Changing File Ownership](#33-changing-file-ownership)
   - [Setting the Group for New Files](#34-setting-the-group-for-new-files)
4. [Password and Expiration Policies](#4-password-and-expiration-policies)
   - [Setting Password Expiration](#41-setting-password-expiration)
   - [Locking/Unlocking a User Account](#42-lockingunlocking-a-user-account)
5. [Special System Files for User/Group Management](#5-special-system-files-for-usergroup-management)
6. [Advanced Group Management: Sudoers](#6-advanced-group-management-sudoers)
   - [Adding a User to the sudo Group](#61-adding-a-user-to-the-sudo-group)
   - [Managing sudo Permissions](#62-managing-sudo-permissions)

## 1. User Management

### 1.1 Adding a User
To add a new user, use the `useradd` command:
```bash
sudo useradd <username>
```

### 1.2 Setting a Password
To set a password:
```bash
sudo passwd <username>
```

### 1.3 Modifying a User
Use `usermod` to modify user attributes:
```bash
sudo usermod <options> <username>
```

### 1.4 Deleting a User
Use `userdel` to delete a user:
```bash
sudo userdel <username>
```

### 1.5 Displaying User Information
To display user info:
```bash
id <username>
```

## 2. Group Management

### 2.1 Adding a Group
To add a new group:
```bash
sudo groupadd <groupname>
```

### 2.2 Modifying a Group
To modify a group:
```bash
sudo groupmod <options> <groupname>
```

### 2.3 Deleting a Group
To delete a group:
```bash
sudo groupdel <groupname>
```

### 2.4 Adding a User to a Group
To add a user to a group:
```bash
sudo usermod -aG <groupname> <username>
```

### 2.5 Removing a User from a Group
To remove a user:
```bash
sudo gpasswd -d <username> <groupname>
```

### 2.6 Displaying Group Information
To display group info:
```bash
cat /etc/group
```

## 3. User and Group Permissions

### 3.1 Understanding File Permissions
Linux uses `r`, `w`, and `x` for read, write, and execute permissions.

### 3.2 Changing File Permissions
Use `chmod` to modify permissions:
```bash
chmod <permissions> <file>
```

### 3.3 Changing File Ownership
To change ownership:
```bash
sudo chown <user>:<group> <file>
```

### 3.4 Setting the Group for New Files
Use the `setgid` bit to inherit group ownership:
```bash
sudo chmod g+s <directory>
```

## 4. Password and Expiration Policies

### 4.1 Setting Password Expiration
Use `chage` to set password expiration:
```bash
sudo chage <options> <username>
```

### 4.2 Locking/Unlocking a User Account
To lock a user:
```bash
sudo usermod -L <username>
```

To unlock:
```bash
sudo usermod -U <username>
```

## 5. Special System Files for User/Group Management
- `/etc/passwd`: Stores user info.
- `/etc/group`: Stores group info.
- `/etc/shadow`: Stores passwords.

## 6. Advanced Group Management: Sudoers

### 6.1 Adding a User to the sudo Group
To add a user to `sudo`:
```bash
sudo usermod -aG sudo <username>
```

### 6.2 Managing sudo Permissions
Edit `/etc/sudoers` to modify sudo permissions:
```bash
sudo visudo
```
