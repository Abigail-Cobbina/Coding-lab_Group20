#!/bin/bash

# ==========================================
# Script 2: hospital_analysis.sh
# Collaboratively built by Members 5 and 6
# ==========================================

# (Member 5's process_vitals function will go here)

# Member 6 (Facility Auditor): Water Audit Function
water_audit() {
    local log_file="active_logs/water_usage_log.log"

    if [ ! -f "$log_file" ]; then
        echo "Error: Live water logs not found in active_logs/."
        return 1
    fi

    echo "=========================================="
    echo "       KNH FACILITY WATER AUDIT           "
    echo "=========================================="

    # Using "|" as the field separator (-F '|')
    awk -F '|' '
    {
        # Clean up leading/trailing white spaces from columns 2 and 3
        gsub(/^[ \t]+|[ \t]+$/, "", $2);
        gsub(/^[ \t]+|[ \t]+$/, "", $3);
    }
    $2 == "ICU_WATER_RESERVE" {
        sum += $3; 
        count++
    } 
    END {
        if (count > 0) {
            printf "Target Device:   ICU_WATER_RESERVE\n";
            printf "Total Records:   %d\n", count;
            printf "Average Usage:   %.2f Liters/min\n", (sum / count);
        } else {
            print "No data records found for ICU_WATER_RESERVE.";
        }
    }' "$log_file"

    echo "=========================================="
}

# Execute the audit function
water_audit
