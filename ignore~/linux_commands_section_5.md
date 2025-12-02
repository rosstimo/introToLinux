
# 5. Networking and System Communication

## 5.1 Network Commands
- `ping`: Test connectivity to another host.
  ```bash
  ping google.com
  ```
- `ifconfig` / `ip`: View and configure network interfaces.
  ```bash
  ifconfig                 # old method, not available by default on all systems
  ip addr show             # modern replacement
  ```
- `wget` / `curl`: Download files or interact with websites.
  ```bash
  wget http://example.com/file.zip     # download a file
  curl http://example.com              # fetch page content
  ```
