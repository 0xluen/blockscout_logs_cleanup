#!/bin/bash

LOG_DIR="/usr/local/blockscout/logs/dev"
LOG_FILES=("indexer.log" "error.log")

while true; do
    for log_file in "${LOG_FILES[@]}"; do
        full_path="$LOG_DIR/$log_file"
        if [ -f "$full_path" ]; then
            echo "Deleting $log_file"
            rm "$full_path"
        fi
    done
    sleep 10
done
