CREATE DATABASE disaster_recovery_management;
USE disaster_recovery_management;

-- Table: disaster_events
CREATE TABLE disaster_events (
    event_id INT PRIMARY KEY AUTO_INCREMENT,
    event_type VARCHAR(100) NOT NULL,
    description TEXT,
    impact_level ENUM('Low', 'Medium', 'High', 'Critical') NOT NULL,
    event_date DATETIME NOT NULL,
    detected_by VARCHAR(100),
    status ENUM('Active', 'Resolved', 'Ongoing') DEFAULT 'Active'
);

-- Table: recovery_plans
CREATE TABLE recovery_plans (
    plan_id INT PRIMARY KEY AUTO_INCREMENT,
    event_type VARCHAR(100) NOT NULL,
    plan_details TEXT NOT NULL,
    estimated_recovery_time INT COMMENT 'Time in hours',
    responsible_team VARCHAR(100) NOT NULL
);

-- Table: backup_records
CREATE TABLE backup_records (
    backup_id INT PRIMARY KEY AUTO_INCREMENT,
    system_name VARCHAR(100) NOT NULL,
    backup_date DATETIME NOT NULL,
    backup_status ENUM('Success', 'Failed', 'In Progress') NOT NULL,
    storage_location VARCHAR(255) NOT NULL
);

-- Table: system_redundancy
CREATE TABLE system_redundancy (
    system_id INT PRIMARY KEY AUTO_INCREMENT,
    system_name VARCHAR(100) NOT NULL,
    redundancy_level ENUM('None', 'Partial', 'Full') NOT NULL,
    last_failover_test DATETIME
);

-- Table: recovery_teams
CREATE TABLE recovery_teams (
    team_id INT PRIMARY KEY AUTO_INCREMENT,
    team_name VARCHAR(100) NOT NULL,
    lead_contact VARCHAR(100) NOT NULL,
    expertise_area VARCHAR(255)
);

-- Table: test_exercises
CREATE TABLE test_exercises (
    test_id INT PRIMARY KEY AUTO_INCREMENT,
    test_name VARCHAR(100) NOT NULL,
    test_date DATETIME NOT NULL,
    result ENUM('Pass', 'Fail', 'Needs Improvement') NOT NULL,
    notes TEXT
);
