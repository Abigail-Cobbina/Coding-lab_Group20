# Coding-lab_Group20
## KNH Digital Infrastructure Project

## Project Overview
This project is about securing and managing data flow  for Kenyatta National Hospital (KNH) .it manages data flow 12 critical sensors (Heart Rate, Temperature, and Water Usage).The goal of the team is to build a secure permission-governed environment and an analytical dashboard using Shell Scripting.

## Team Members and Role

 Member 1 -  The Architect:
 Responsible for creating the system directories. His function checks if the folders exist and creates them if they do not.

 Member 2 -  The Security Lead :
 Sets permissions on the active_logs folder so that only the owner can read and write to it. This protects sensitive patient data.

 Member 3 -  The Orchestrator :
 Writes the execution logic and runs the admin functions in the correct order.

 Member 4 -  The Archivist :
 Rotates and archives logs by moving them to archived_logs with a timestamp.

 Member 5 -  Clinical Analyst :
 Finds critical vitals by scanning Heart Rate and Temperature logs for any row marked CRITICAL and saves those records into a report file.

 Member 6 -  Facility Auditor :
 Audits water usage by calculating the average consumption for the ICU Water Reserve and prints a clean summary to the screen.

------------

# How to run everything

First, set up the system environment:
```bash
bash hospital_admin.sh


Then start the data engine do the sensor begins recording:
```bash
Python3 hospital_system.py start


Once there is data, run the analysis:
```bash
bash hospital_analysis.sh

When the analysis is done, archive the logs
```bash
bash hospital_archive.sh

Finally, stop the engine:
```bash
python3 hospital_system.py stop

---------

# Files in the Repository

hospital_system.py
This is the data engine provided . it contains the 12 hospital sensors and writes their readings into log files.

hospital_admin.sh
The file is built by members 1, 2 and 3. It sets up the directories and secures the active_logs folder with the right permissions.

hospital_analysis.sh
Built by members 5 and 6 . It reads the live log data, finds critical health alerts and audits water usage.

hospital_archive.sh
Built by member 4 .It rotates the logs by moving them to archived_logs and renaming them with a timestamp.

.gitignore
we added this to make sure no actual log data or reports get uploaded to Github . Patient data must stay private.

-------

