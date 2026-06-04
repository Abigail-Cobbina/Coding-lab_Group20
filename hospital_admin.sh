#!/bin/bash

# Member 1 - The Architect
initialize_system() {
    echo "==========================================="
    echo " KNH System Initialization"
    echo "==========================================="

    if [ -d "active_logs" ]; then
        echo "[OK] active_logs directory already exists."
    else
        echo "Creating active_logs directory..."
        mkdir -p active_logs
        echo "[DONE] active_logs created."
    fi

    if [ -d "archived_logs" ]; then
        echo "[OK] archived_logs already exists."
    else
        echo "Creating archived_logs directory..."
        mkdir -p archived_logs
        echo "[DONE] archived_logs created."
    fi

    if [ -d "reports" ]; then
        echo "[OK] reports already exists."
    else
        echo "Creating reports directory..."
        mkdir -p reports
        echo "[DONE] reports created."
    fi

    echo "Directory initialization complete."
}

# Member 2 - Security Lead
secure_data() {
    echo "==========================================="
    echo " KNH Security Configuration"
    echo "==========================================="

    if [ ! -d "active_logs" ]; then
        echo "[ERROR] active_logs not found."
        exit 1
    fi

    chmod 600 active_logs

    echo "Permissions set:"
    ls -ld active_logs
}

# Member 3 - Orchestrator
initialize_system
secure_data

echo ""
echo "==========================================="
echo " System Environment Secured"
echo " Date: $(date)"
echo "==========================================="
