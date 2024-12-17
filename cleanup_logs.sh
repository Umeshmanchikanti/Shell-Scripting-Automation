#!/bin/bash
LOG_DIR="/var/log"
ARCHIVE_DIR="$HOME/log_backups"

# Create backup directory if it doesn't exist
mkdir -p "$ARCHIVE_DIR"

# Archive and clean logs
echo "Archiving and clearing log files..."
for file in $LOG_DIR/*.log; do
    gzip -c "$file" > "$ARCHIVE_DIR/$(basename "$file").gz"
    > "$file"
    echo "Processed: $file"
done
echo "Log cleanup complete."

