#!/bin/bash
LOG_DIR="$HOME/myproject/logs"
LOG_FILE="$LOG_DIR/update_log_$(date '+%Y-%m-%d').log"

mkdir -p "$LOG_DIR"

echo "========== system update: $(date '+%Y-%m-%d %H:%M:%S') ============" >> "$LOG_FILE"

{
echo "[INFO] Running apt update..."
sudo apt update

echo "[INFO] Running apt upgrade..."
sudo apt -y upgrade

echo "[INFO] System update completed successfully."
} >> "$LOG_FILE" 2>&1

echo "[INFO] Refer to /var/log/apt/history.log and term.log for detailed audit." >> "$LOG_FILE"
echo "=======================================================" >> "$LOG_FILE"

chmod 600 "$LOG_FILE"
