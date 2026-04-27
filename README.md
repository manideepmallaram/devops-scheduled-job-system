# DevOps Scheduled Job Automation System

## Overview
This project demonstrates a containerized scheduled job system using Docker and cron.

The system automatically runs tasks (like backups) at fixed intervals without manual intervention.

---

## Tech Stack
- Docker
- Linux (Ubuntu)
- Cron Scheduler
- Shell Scripting

---

##  Features
- Automated job execution every minute
- Containerized environment using Docker
- Log generation and monitoring
- Simple and reproducible setup

---

##  Project Structure
devops-scheduled-job-system/
├── Dockerfile
├── scripts/
│   ├── backup.sh
│   └── data.txt
└── logs/

---

## How to Run

### 1. Build Docker Image
```bash
docker build -t scheduler-app .
