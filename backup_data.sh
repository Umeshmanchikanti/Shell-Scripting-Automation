#!/bin/bash
SOURCE_DIR="$HOME/Documents"
BACKUP_DIR="$HOME/Backups"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

mkdir -p "$BACKUP_DIR"

echo "Backing up $SOURCE_DIR to $BACKUP_DIR..."
tar -czf "$BACKUP_DIR/backup_$TIMESTAMP.tar.gz" "$SOURCE_DIR"
echo "Backup completed: backup_$TIMESTAMP.tar.gz"

