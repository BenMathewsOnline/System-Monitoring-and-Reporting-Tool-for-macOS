#!/bin/bash

# Get CPU usage
cpu_usage=$(ps -A -o %cpu | awk '{s+=$1} END {print s"%"}')

# Get memory usage
mem_usage=$(vm_stat | awk '/Pages free:/{free=$3} /Pages active:/{active=$3} /Pages inactive:/{inactive=$3} /Pages speculative:/{speculative=$3} /Pages wired down:/{wired=$4} /Pages occupied by compressor:/{compressed=$5} END {total=free+active+inactive+speculative+wired+compressed; used=(active+inactive+wired+compressed)*4096; printf "%.2f%%\n", used*100/(used+(free+speculative)*4096)}')

# Get disk usage
disk_usage=$(df -h / | awk 'NR==2{printf "%s", $5}')

# Get network traffic
network_traffic=$(netstat -ibn | awk '/en0/{printf "Received: %d KB, Sent: %d KB\n", $7/1024, $10/1024}')

echo "System Monitoring Report"
echo "-------------------------"
echo "CPU usage: $cpu_usage"
echo "Memory usage: $mem_usage"
echo "Disk usage: $disk_usage"
echo "Network traffic:"
echo "$network_traffic"
