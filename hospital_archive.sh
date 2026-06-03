#!/bin/bash
cd active_logs
timestamp=$(date +x"%Y%m%d_%H%M%S")
  mv heart_rate_log.log ../archived_logs/heart_rate_$timestamp.log
  mv temperature_log.log ../archived_logs/temperature_$timestamp.log
  mv water_usage_log.log ../archived_logs/water_usage_$timestamp.log
touch heart_rate.log temperature.log water_usage.log
