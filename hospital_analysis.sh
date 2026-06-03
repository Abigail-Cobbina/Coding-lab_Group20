#!/bin/bash

# Member 5 - Clinical Analyst
process_vitals() {
    echo "hello"
    echo "clinical analysis"
    echo "clinical analysis begins"
    grep "CRITICAL" active_logs/heart_rate_log.txt active_logs/temperature_log.txt | \
    awk '{print $1, $2, $3}' > reports/critical_alerts.txt
    echo "Critical alerts saved to reports/critical_alerts.txt"
}
process_vitals
