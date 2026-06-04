#!/bin/bash

# =============================================================================
# hospital_admin.sh
# KNH Digital Infrastructure - Admin Setup Script
# =============================================================================

# -----------------------------------------------------------------------------
# MEMBER 1 - The Architect
# Function: initialize_system()
# -----------------------------------------------------------------------------
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
        echo "[OK] archived_logs directory already exists."
    else
        echo "Creating archived_logs directory..."
        mkdir -p archived_logs
        echo "[DONE] archived_logs created."
    fi

    if [ -d "reports" ]; then
        echo "[OK] reports directory already exists."
    else
        echo "Creating reports directory..."
        mkdir -p reports
        echo "[DONE] reports created."
    fi

    echo "-------------------------------------------"
    echo "Directory initialization complete."
    echo "-------------------------------------------"
}

# -----------------------------------------------------------------------------
# MEMBER 2 - The Security Lead
# Function: secure_data()
# -----------------------------------------------------------------------------
secure_data() {
    echo "==========================================="
    echo " KNH Security Configuration"
    echo "==========================================="

    if [ ! -d "active_logs" ]; then
        echo "[ERROR] active_logs directory not found. Run initialize_system first."
        exit 1
    fi

    echo "Applying permissions: Owner read/write only (chmod 600) on active_logs..."
    chmod 600 active_logs

    echo "Permissions set. Current state of active_logs:"
    echo "-------------------------------------------"
    ls -ld active_logs
    echo "-------------------------------------------"
    echo "[DONE] active_logs secured. Only the owner can read and write."
}
