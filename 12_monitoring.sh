
# Chapter 12: System Monitoring and Management

**Objective:**  
Learn to monitor system performance and manage services effectively using essential Linux commands.

## Lesson 1: Introduction to System Monitoring

### Overview
This lesson introduces system monitoring in Linux, covering the importance of monitoring system performance and the tools available to achieve it. Learners will understand how to assess system health, resource usage, and identify potential issues.

### Learning Objectives
- Understand the importance of system monitoring.
- Identify key metrics for system performance.
- Learn about various system monitoring tools in Linux.

### Content

#### 1. Importance of System Monitoring
- **Performance Tracking:** Ensures the system operates efficiently and identifies bottlenecks.
- **Resource Management:** Monitors CPU, memory, disk, and network usage to optimize performance.
- **Security:** Detects unusual activities that may indicate security breaches.
- **Troubleshooting:** Aids in diagnosing and resolving system issues promptly.

#### 2. Key Metrics for System Performance
- **CPU Usage:** Percentage of CPU being used.
- **Memory Usage:** Amount of RAM being utilized.
- **Disk I/O:** Read/write operations on storage devices.
- **Network Activity:** Data transmission rates and network interface status.
- **Process Management:** Active processes and their resource consumption.

#### 3. System Monitoring Tools
- **`top`:** Real-time system monitoring tool displaying processes and resource usage.
- **`htop`:** Enhanced version of `top` with a more user-friendly interface.
- **`vmstat`:** Reports virtual memory statistics.
- **`iostat`:** Monitors system input/output device loading.
- **`netstat`:** Displays network connections, routing tables, interface statistics.
- **`sar`:** Collects and reports system activity information.
- **`systemctl`:** Manages system services and the systemd system and service manager.

### Examples
- **Using `top` to Monitor Processes:**
  ```bash
  top
  ```
  - Displays a list of running processes with their CPU and memory usage.
  
- **Using `htop` for Enhanced Monitoring:**
  ```bash
  sudo apt install htop    # Install htop on Debian/Ubuntu
  htop
  ```
  - Provides a color-coded, interactive interface for process monitoring.

### Exercises

1. **Basic Monitoring with `top`:**
   - **Task:** Open `top` and identify the top three processes consuming the most CPU.
   - **Steps:**
     ```bash
     top
     ```
     - Observe the CPU% column and note the top processes.
     - Press `q` to exit.

2. **Installing and Using `htop`:**
   - **Task:** Install `htop` and use it to monitor memory usage.
   - **Commands:**
     ```bash
     sudo apt install htop    # For Debian/Ubuntu
     sudo dnf install htop    # For Fedora
     htop
     ```
     - Observe memory usage in the interface.
     - Press `F10` or `q` to exit.

3. **Monitoring Disk I/O with `iostat`:**
   - **Task:** Install `sysstat` package and use `iostat` to monitor disk I/O.
   - **Commands:**
     ```bash
     sudo apt install sysstat    # For Debian/Ubuntu
     sudo dnf install sysstat    # For Fedora
     iostat
     ```
     - Review the read/write statistics for your disks.

## Lesson 2: Using `top` and `htop` for Monitoring

### Overview
Dive deeper into using `top` and `htop` for comprehensive system monitoring. Learn how to interpret the data, sort processes, and customize the display for better insights.

### Learning Objectives
- Master the usage of `top` and `htop` for real-time monitoring.
- Learn to sort and filter processes based on different criteria.
- Customize the monitoring tools to display relevant information.

### Content

#### 1. Advanced Usage of `top`
- **Sorting Processes:**
  - Press `M` to sort by memory usage.
  - Press `P` to sort by CPU usage.
  - Press `T` to sort by running time.
  
- **Killing Processes:**
  - Press `k` and enter the PID of the process to terminate it.
  
- **Renicing Processes:**
  - Press `r` and enter the PID to change its priority.

#### 2. Advanced Usage of `htop`
- **Navigating the Interface:**
  - Use arrow keys to navigate through the list of processes.
  
- **Filtering Processes:**
  - Press `/` and enter a search term to filter processes.
  
- **Killing Processes:**
  - Press `F9`, select the signal, and confirm to kill a process.
  
- **Customizing Display:**
  - Press `F2` to enter setup and customize meters, colors, and layout.

#### 3. Comparing `top` and `htop`
- **`top`:**
  - Available by default on most Linux distributions.
  - Minimalist interface with essential information.
  
- **`htop`:**
  - Requires installation.
  - More interactive and visually appealing with color-coded information.
  - Easier to navigate and manage processes.

### Examples
- **Sorting `top` by Memory Usage:**
  ```bash
  top
  ```
  - Press `M` while `top` is running.
  
- **Filtering `htop` for a Specific Process:**
  ```bash
  htop
  ```
  - Press `/` and type the process name (e.g., `nginx`).

### Exercises

1. **Sorting Processes in `top`:**
   - **Task:** Open `top`, sort processes by CPU usage, and identify the most CPU-intensive process.
   - **Steps:**
     ```bash
     top
     ```
     - Press `P` to sort by CPU usage.
     - Note the top process.
     - Press `q` to exit.

2. **Killing a Process with `htop`:**
   - **Task:** Use `htop` to find and kill a process named `sample_process`.
   - **Steps:**
     ```bash
     htop
     ```
     - Press `/`, type `sample_process`, and press `Enter`.
     - Navigate to the process, press `F9`, select `SIGTERM`, and press `Enter` to kill.

3. **Customizing `htop` Display:**
   - **Task:** Customize `htop` to display CPU, Memory, and Swap usage.
   - **Steps:**
     ```bash
     htop
     ```
     - Press `F2` to enter setup.
     - Navigate to `Meters`, add `CPU`, `Memory`, and `Swap`.
     - Save and exit by pressing `F10`.

## Lesson 3: Using `vmstat`, `iostat`, and `netstat`

### Overview
Explore additional system monitoring tools—`vmstat`, `iostat`, and `netstat`—to gain deeper insights into virtual memory, disk I/O, and network activities.

### Learning Objectives
- Understand how to use `vmstat` for monitoring virtual memory and system processes.
- Learn to utilize `iostat` for detailed disk I/O statistics.
- Master `netstat` for analyzing network connections and interface statistics.

### Content

#### 1. Monitoring Virtual Memory with `vmstat`
- **`vmstat` Command:**
  - **Usage:** `vmstat [options] [delay [count]]`
  - **Purpose:** Reports information about processes, memory, paging, block IO, traps, and CPU activity.
  
- **Common Options:**
  - `-s`: Display memory statistics in a table format.
  - `-m`: Show slabinfo.
  
- **Example:**
  ```bash
  vmstat 5 3
  ```
  - Displays system statistics every 5 seconds, three times.

#### 2. Monitoring Disk I/O with `iostat`
- **`iostat` Command:**
  - **Usage:** `iostat [options] [interval [count]]`
  - **Purpose:** Reports CPU statistics and input/output statistics for devices and partitions.
  
- **Common Options:**
  - `-x`: Extended statistics.
  - `-d`: Display only device utilization.
  
- **Example:**
  ```bash
  iostat -x 2 3
  ```
  - Displays extended I/O statistics every 2 seconds, three times.

#### 3. Analyzing Network Activity with `netstat`
- **`netstat` Command:**
  - **Usage:** `netstat [options]`
  - **Purpose:** Displays network connections, routing tables, interface statistics, masquerade connections, and multicast memberships.
  
- **Common Options:**
  - `-t`: Show TCP connections.
  - `-u`: Show UDP connections.
  - `-l`: Show only listening sockets.
  - `-p`: Show the PID and name of the program to which each socket belongs.
  - `-i`: Display network interfaces and statistics.
  
- **Example:**
  ```bash
  netstat -tulnp
  ```
  - Lists all listening TCP and UDP ports with associated programs.

### Examples
- **Using `vmstat` to Monitor System Every 3 Seconds:**
  ```bash
  vmstat 3
  ```
  
- **Using `iostat` to Check Disk I/O:**
  ```bash
  iostat -x 2 4
  ```
  
- **Listing All Listening Ports with `netstat`:**
  ```bash
  netstat -tulnp
  ```

### Exercises

1. **Monitoring Memory with `vmstat`:**
   - **Task:** Use `vmstat` to monitor system memory and CPU usage every 4 seconds, five times.
   - **Command:**
     ```bash
     vmstat 4 5
     ```

2. **Analyzing Disk I/O with `iostat`:**
   - **Task:** Use `iostat` to display extended disk I/O statistics every 3 seconds, three times.
   - **Command:**
     ```bash
     iostat -x 3 3
     ```

3. **Checking Open Network Ports with `netstat`:**
   - **Task:** Use `netstat` to list all active TCP connections along with the programs using them.
   - **Command:**
     ```bash
     netstat -tupn
     ```

4. **Identifying Network Interfaces:**
   - **Task:** Use `netstat` to display all network interfaces and their statistics.
   - **Command:**
     ```bash
     netstat -i
     ```

### Summary
This lesson introduced additional system monitoring tools—`vmstat`, `iostat`, and `netstat`—to provide comprehensive insights into virtual memory, disk I/O, and network activities. Mastery of these tools enables learners to perform in-depth system analysis, optimize performance, and troubleshoot effectively.

## Lesson 4: Service Management with `systemctl`

### Overview
Learn how to manage system services using `systemctl`, the command-line utility for controlling the systemd system and service manager. This lesson covers starting, stopping, enabling, and disabling services, as well as checking their status.

### Learning Objectives
- Understand the role of `systemd` and `systemctl` in service management.
- Learn how to start, stop, restart, and reload services.
- Manage service startup behavior with enabling and disabling.
- Check the status and logs of services.

### Content

#### 1. Introduction to `systemd` and `systemctl`
- **`systemd`:**
  - A system and service manager for Linux operating systems.
  - Replaces older init systems like SysVinit and Upstart.
  
- **`systemctl`:**
  - The primary tool for interacting with `systemd`.
  - Manages services (start, stop, restart), system states, and more.

#### 2. Managing Services
- **Starting a Service:**
  - **Command:** `sudo systemctl start service_name`
  - **Example:** Start the Apache web server.
    ```bash
    sudo systemctl start apache2
    ```
  
- **Stopping a Service:**
  - **Command:** `sudo systemctl stop service_name`
  - **Example:** Stop the Apache web server.
    ```bash
    sudo systemctl stop apache2
    ```
  
- **Restarting a Service:**
  - **Command:** `sudo systemctl restart service_name`
  - **Example:** Restart the Apache web server.
    ```bash
    sudo systemctl restart apache2
    ```
  
- **Reloading a Service:**
  - **Command:** `sudo systemctl reload service_name`
  - **Example:** Reload the Apache configuration without restarting.
    ```bash
    sudo systemctl reload apache2
    ```

#### 3. Enabling and Disabling Services
- **Enabling a Service:**
  - **Command:** `sudo systemctl enable service_name`
  - **Purpose:** Configures the service to start automatically at boot.
  - **Example:** Enable Apache to start on boot.
    ```bash
    sudo systemctl enable apache2
    ```
  
- **Disabling a Service:**
  - **Command:** `sudo systemctl disable service_name`
  - **Purpose:** Prevents the service from starting automatically at boot.
  - **Example:** Disable Apache from starting on boot.
    ```bash
    sudo systemctl disable apache2
    ```

#### 4. Checking Service Status
- **Checking Status:**
  - **Command:** `sudo systemctl status service_name`
  - **Example:** Check the status of Apache.
    ```bash
    sudo systemctl status apache2
    ```
  - **Output Includes:**
    - Service status (active, inactive, failed)
    - Recent log entries
    - Process ID (PID)

#### 5. Viewing Service Logs
- **Using `journalctl`:**
  - **Command:** `sudo journalctl -u service_name`
  - **Example:** View logs for Apache.
    ```bash
    sudo journalctl -u apache2
    ```
  
- **Real-Time Log Monitoring:**
  - **Command:** `sudo journalctl -u service_name -f`
  - **Example:** Monitor Apache logs in real-time.
    ```bash
    sudo journalctl -u apache2 -f
    ```

#### 6. Managing All Services
- **Listing All Services:**
  - **Command:** `systemctl list-units --type=service`
  
- **Listing Enabled Services:**
  - **Command:** `systemctl list-unit-files --type=service --state=enabled`
  
- **Listing Disabled Services:**
  - **Command:** `systemctl list-unit-files --type=service --state=disabled`

### Examples
- **Starting and Enabling Apache:**
  ```bash
  sudo systemctl start apache2
  sudo systemctl enable apache2
  ```
  
- **Checking Apache Status:**
  ```bash
  sudo systemctl status apache2
  ```
  
- **Viewing Apache Logs:**
  ```bash
  sudo journalctl -u apache2 -f
  ```

### Exercises

1. **Managing a Service:**
   - **Task:** Start the `ssh` service, enable it to start on boot, and verify its status.
   - **Commands:**
     ```bash
     sudo systemctl start ssh
     sudo systemctl enable ssh
     sudo systemctl status ssh
     ```

2. **Stopping and Disabling a Service:**
   - **Task:** Stop the `apache2` service and disable it from starting on boot.
   - **Commands:**
     ```bash
     sudo systemctl stop apache2
     sudo systemctl disable apache2
     sudo systemctl status apache2
     ```

3. **Viewing Service Logs:**
   - **Task:** Use `journalctl` to view the logs of the `cron` service.
   - **Command:**
     ```bash
     sudo journalctl -u cron
     ```

4. **Listing Services:**
   - **Task:** List all currently active services on your system.
   - **Command:**
     ```bash
     systemctl list-units --type=service --state=active
     ```

### Summary
This lesson provided a comprehensive overview of managing system services using `systemctl`. Learners explored how to start, stop, restart, enable, and disable services, as well as how to check their status and view logs. Mastery of `systemctl` is essential for effective system administration and ensuring that critical services run smoothly.

---

## How to Use This Markdown File

1. **Copy the Text:**
   - Select all the text within the code block above (from `# Module 3: System Monitoring and Management` to the end) and copy it.

2. **Create a Markdown File:**
   - Open a text editor of your choice (e.g., VS Code, Sublime Text, Notepad++, or even plain Notepad).

3. **Paste and Save:**
   - Paste the copied text into the editor.
   - Save the file with a `.md` extension, for example, `Module3_System_Monitoring_and_Management.md`.

4. **View the Markdown:**
   - Use a Markdown viewer or an editor that supports Markdown to view the formatted content.
   - Alternatively, you can upload the `.md` file to platforms like GitHub or GitLab to see the rendered version.


