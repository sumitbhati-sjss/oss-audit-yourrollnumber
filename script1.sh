#!/bin/bash
# Script 1: System Identity Report

echo "================================"
echo " Open Source Audit"
echo "================================"

echo "Kernel Version : $(uname -r)"
echo "User           : $(whoami)"
echo "Home Directory : $HOME"
echo "Uptime         : $(uptime -p)"
echo "Date & Time    : $(date)"

echo "This system is based on open-source Linux (GPL License)"