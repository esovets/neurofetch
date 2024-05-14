#!/bin/bash

# Function to display device information
display_device_info() {
    echo "Device Information:"
    echo "-------------------"
    echo "Model: $(getprop ro.product.model)"
    echo "Manufacturer: $(getprop ro.product.manufacturer)"
    echo "Android Version: $(getprop ro.build.version.release)"
    echo "Kernel Version: $(uname -r)"
    echo "CPU: $(lscpu | grep 'Model name' | awk -F ': ' '{print $2}')"
    echo "Total Memory: $(free -h | awk '/Mem/ {print $2}')"
    echo "Total Storage: $(df -h /data | awk 'NR==2 {print $2}')"
}

