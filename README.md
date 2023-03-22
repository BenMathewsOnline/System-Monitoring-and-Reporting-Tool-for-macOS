# System Monitoring and Reporting Tool for macOS

This bash script provides a simple system monitoring report for macOS systems. It gathers information about CPU usage, memory usage, disk usage, and network traffic.

## Features

- CPU usage: Displays the total percentage of CPU usage.
- Memory usage: Shows the percentage of used memory.
- Disk usage: Indicates the disk usage percentage of the root partition.
- Network traffic: Presents the amount of data received and sent over the primary network interface (usually `en0`).

## Usage

1. Clone the repository or download the `sys_monitor_mac.sh` script to your local machine.

2. Make the script executable:

```bash
chmod +x sys_monitor_mac.sh

Run the script:

./sys_monitor_mac.sh

The output will show a system monitoring report similar to the following:

System Monitoring Report
-------------------------
CPU usage: 27.7%
Memory usage: 68.49%
Disk usage: 58%
Network traffic:
Received: 204825 KB, Sent: 60937 KB
Requirements

macOS operating system

Limitations

This script is designed specifically for macOS systems and may not work correctly on other platforms.
