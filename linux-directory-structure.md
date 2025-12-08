# Linux System Directory Structure

Linux organizes files in a hierarchical directory tree, starting from the root directory `/`. Here are the most common top-level directories and their purposes:

| Directory | Purpose |
|-----------|---------|
| `/`       | Root directory; the top of the filesystem hierarchy. |
| `/bin`    | Essential user binaries (programs) needed for basic system operation. |
| `/boot`   | Boot loader files, kernel images, and related files needed to boot the system. |
| `/dev`    | Device files representing hardware (e.g., disks, terminals, USB). |
| `/etc`    | System-wide configuration files and scripts. |
| `/home`   | User home directories (e.g., `/home/alice`). |
| `/lib`    | Essential shared libraries and kernel modules. |
| `/media`  | Mount points for removable media (USB drives, CDs). |
| `/mnt`    | Temporary mount points for filesystems. |
| `/opt`    | Optional or third-party application software. |
| `/proc`   | Virtual filesystem providing process and kernel information. |
| `/root`   | Home directory for the root (administrator) user. |
| `/run`    | Runtime data for processes since the last boot. |
| `/sbin`   | System binaries for administration (usually only for root). |
| `/srv`    | Data for services provided by the system (e.g., web, FTP). |
| `/sys`    | Virtual filesystem exposing kernel and hardware information. |
| `/tmp`    | Temporary files (often cleared on reboot). |
| `/usr`    | Secondary hierarchy for user programs and data. |
| `/var`    | Variable data files (logs, mail, spool files, etc.). |

## Notes

- All files and directories in Linux descend from `/`.
- System files are generally outside `/home`; user data is inside `/home`.
- Some directories (like `/proc` and `/sys`) are virtual and do not contain real files on disk.

For more details, see `man 7 hier` on at the url [https://www.man7.org/linux/man-pages/man7/hier.7.html](https://www.man7.org/linux/man-pages/man7/hier.7.html)
