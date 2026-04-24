**Project Setup Guide**

This guide explains how to set up and run the Money Laundering SQL Analysis project.

**Prerequisites**

- MySQL installed
- MySQL Workbench (or any SQL client)
- transactions.csv dataset downloaded from Kaggle(Can be sourced from my respository as well)

**Step 1 — Create the Database**

CREATE DATABASE aml_analysis;

 CREATE TABLE transactions (
 
    time VARCHAR(20),
    
    date VARCHAR(20),
    
    sender_account VARCHAR(120),
    
    receiver_account VARCHAR(120),
    
    amount DECIMAL(15,2),
    
    payment_currency VARCHAR(120),
    
    received_currency VARCHAR(120),
    
    sender_bank_location VARCHAR(120),
    
    receiver_bank_location VARCHAR(120),
    
    payment_type VARCHAR(120),
    
    is_laundering INT,
    
    laundering_type VARCHAR(120)
);

**Step 2 — Create the Table**

Run the schema.sql file to create the transactions table.

**Step 3 — Import the Dataset**

Open MySQL Workbench

Right-click the transactions table

Choose Table Data Import Wizard

Select transactions.csv

Import into the existing table

**Step 4 — Run SQL Analysis**

Execute the SQL files inside the /sql folder in sequence:

01_data_understanding.sql

02_suspicious_analysis.sql

03_pattern_analysis.sql

04_account_risk.sql

05_geographic_analysis.sql

06_payment_behavior.sql

07_high_value.sql

08_time_trend.sql
