# Disaster Recovery Management

## 📌 Project Overview
The **Disaster Recovery Management** system is designed to handle **disaster response and recovery** in an organization. It helps manage incidents, recovery plans, backups, redundancy, and response teams.

## 🏗️ Database Structure
- `disaster_events` - Logs all disaster incidents.
- `recovery_plans` - Stores predefined disaster recovery strategies.
- `backup_records` - Tracks system backups.
- `system_redundancy` - Monitors failover mechanisms.
- `recovery_teams` - Maintains emergency response teams.
- `test_exercises` - Documents recovery drills.

## 🚀 Installation
Run the SQL file in MySQL:
```sh
mysql -u root -p < disaster_recovery_management.sql
