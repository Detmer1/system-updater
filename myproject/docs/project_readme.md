# System Update Automation Script

##Description
This project automates the process of updating a Debian/ubuntu-based system using "apt". It logs all update activity and schedules the task to run weekly via 'cron'.

----

## Script Location
myproject/scripts/update_system.sh

----

## Features
- Runs 'apt update' and 'apt upgrade'
- Logs output to 'myproject/logs/update_log_<date>.log'
- Secures log files with proper permissions
- Mentions system-level audit logs in '/var/log/apt'
- Weekly automation via 'cron'
- Optional: Email notification using 'mailutils'

----

## Setup

### 1. Create directoris
mkdir -p myproject/{scripts,logs,docs}
