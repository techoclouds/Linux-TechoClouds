
# Comprehensive Cheat Sheet for System Management Commands in Linux

## Introduction
This cheat sheet covers essential system management commands in Linux, providing tools necessary to monitor, maintain, and optimize systems.

## System Monitoring
| Command | Description |
|---------|-------------|
| `top` | Displays active processes, CPU and memory usage. |
| `htop` | Interactive process viewer with an enhanced interface. |
| `vmstat` | Reports on system processes, memory, paging, I/O, CPU. |
| `iostat` | Displays CPU stats and I/O statistics for devices. |
| `free` | Displays amount of free and used memory in the system. |
| `uptime` | Shows how long the system has been running. |
| `pidstat` | Reports statistics based on PID. |
| `sar` | Collects, reports, or saves system activity information. |

## User and Group Management
| Command | Description |
|---------|-------------|
| `useradd` / `userdel` / `usermod` | Adds, deletes, modifies a user account. |
| `chage` | Changes user password expiry information. |
| `getent` | Gets entries from Name Service Switch libraries. |
| `id` | Prints real and effective user and group IDs. |
| `whoami` | Displays who you are logged in as. |
| `w` | Shows who is logged on and what they are doing. |
| `groupadd` / `groupdel` / `groupmod` | Adds, deletes, modifies a group. |
| `groups` | Shows the groups a user is in. |

## Service and Process Management
| Command | Description |
|---------|-------------|
| `systemctl` | Controls the systemd system and service manager. |
| `service` | Manages SysV services. |
| `chkconfig` | Manages services across different runlevels. |
| `ps` / `pstree` | Reports a snapshot of current processes, displays a tree of processes. |
| `kill` / `killall` / `pkill` | Sends signals to processes by PID or name. |

## Disk Usage
| Command | Description |
|---------|-------------|
| `df` / `du` | Checks disk space and disk usage. |
| `fdisk` / `parted` | Manipulates disk partition table. |
| `lsblk` | Lists information about all available or the specified block devices. |
| `mount` / `umount` | Mounts, unmounts filesystems. |

## Network Management
| Command | Description |
|---------|-------------|
| `ifconfig` / `ip` | Configures, manages, inspects network interfaces. |
| `netstat` / `ss` | Analyzes network connections, socket statistics. |
| `ping` / `traceroute` | Checks connectivity, prints the route packets take to network host. |
| `dig` / `nslookup` | DNS lookup, queries Internet domain name servers. |
| `route` | Shows/manipulates the IP routing table. |

## System Maintenance
| Command | Description |
|---------|-------------|
| `cron` / `crontab` | Schedules and manages repetitive tasks. |
| `at` / `anacron` | Executes commands at a specified time, runs commands periodically. |
| `logrotate` | Rotates, compresses, and mails system logs. |
| `rsync` | Remote file and directory synchronization. |

This cheat sheet provides a vital resource for system administrators, ensuring efficient, secure, and responsive management of Linux environments.
