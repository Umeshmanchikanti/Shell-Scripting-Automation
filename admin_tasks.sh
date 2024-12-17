#!/bin/bash

echo "Select an administrative task to perform:"
echo "1. Clean up log files"
echo "2. Back up important data"
echo "3. Update the system"
echo "4. Exit"

read -p "Enter your choice [1-4]: " choice

case $choice in
    1) ./cleanup_logs.sh ;;
    2) ./backup_data.sh ;;
    3) ./update_system.sh ;;
    4) echo "Exiting..."; exit 0 ;;
    *) echo "Invalid choice!"; exit 1 ;;
esac

