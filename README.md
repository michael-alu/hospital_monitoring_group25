# Hospital Monitoring System - Group 25

This project is designed to handle data monitoring for a hospital system by recording heart rate data, archiving logs, and securely backing up those logs to a remote server.

---

## Team Attendance Report

- [Michael Nwuju](https://github.com/michael-alu): Present
- [Yvette Muhoracyeye](https://github.com/Yvette334): Present
- [Merveille Munana](https://github.com/Munana122): Present
- [DaVinci Murengezi Gisanura](https://github.com/DaVinci34162): Present
- DAN ORRIE NKUSI: Absent
- Rene Pascal Mugisha: Excused (Out of the country)

---
## Group Session Attendance Report

Here is a detailed report of the following sessions we had, the times we had this session, members present and members absent.


| **Session**                                    | **Date (DD/MM/YYYY)**      | **Members Present**                                               | **Members Absent** |
|------------------------------------------------|---------------|-----------------------------------------------------------|------------|
| 1. Implement the features                | 14/10/2024    | Michael, Yvette        | Merveille, DaVinci, Dan, Rene       |
| 2. Set up the README for the project              | 17/10/2024    | Michael, Merveille, Yvette        | DaVinci, Dan, Rene       |
| 3. Improve the README (Make it more appealing)              | 20/10/2024    | Michael, Merveille, Yvette, DaVinci        | Dan, Rene       |

---

## Project Structure

The project consists of the following three shell scripts:

1. **heart_rate_monitor.sh** - Script for heart rate monitoring.
2. **archive_log.sh** - Script for archiving the heart rate log.
3. **backup_archives.sh** - Script for backing up logs to a remote server.

---

## Requirements

- Linux environment (tested on Ubuntu 20.04)
- Bash shell (version 5 or higher)
- Internet connection for remote backups

## Setup

1. *Clone the repository*:


```
   git clone https://github.com/michael-alu/hospital_monitoring_group25.git
   
   cd hospital_monitoring_group25
```


2. *Make sure the scripts are executable in case they are not*:

```
    chmod u+x heart_rate_monitor.sh archive_log.sh backup_archives.sh
```
   

---

## How to Run the Scripts

### 1. Heart Rate Monitoring (heart_rate_monitor.sh)

This script simulates monitoring the heart rate and logs the data every second.

*Usage*:

```
./heart_rate_monitor.sh
```


- The script will prompt for a device name (e.g., "Monitor_A", "Monitor_B").
- Heart rate data will be logged into heart_rate_log.txt with a timestamp and device name.
- Heart rate is designed to fall under the normal heart beat rate (60 - 100 bpm)
- The script runs in the background, and the process ID (PID) will be displayed.
- When the PID is printed, you can use it to kill the process.

*Log Example*:


2024-10-03 14:35:02 Monitor_A 61

2024-10-03 14:35:03 Monitor_A 67


*Check logs*:

```
tail -f heart_rate_log.txt
```


---

### 2. Log Archival (archive_log.sh)

This script archives the heart_rate_log.txt by renaming it with a timestamp.

*Usage*:

```
./archive_log.sh
```


- The log file will be renamed in the format: heart_rate_log.txt_YYYYMMDD_HHMMSS.

*Example*:


heart_rate_log.txt_20241003_143501


---

### 3. Archival and Backup (backup_archives.sh)

This script moves the archived log files to the archived_logs_group25 directory and securely backs them up to a remote server via SSH. In our case, we will be using Team member *Munana*'s sandbox credentials to achieve this.

*Usage*:

```
./backup_archives.sh
```


- All archived logs will be moved to the archived_logs_group25 directory.
- The script will back up the files to **Munana**'s server in the home directory using scp with SSH authentication.

---

## Submission Details

- GitHub Repository: [hospital_monitoring_group25](https://github.com/michael-alu/hospital_monitoring_group25)
- This project includes all three scripts: heart_rate_monitor.sh, archive_log.sh, backup_archives.sh.
