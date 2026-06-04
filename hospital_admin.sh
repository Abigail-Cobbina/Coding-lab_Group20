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
