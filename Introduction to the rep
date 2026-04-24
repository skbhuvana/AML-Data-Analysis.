**Problem Statement**-

Financial institutions process large volumes of transactions daily, making it challenging to manually detect suspicious patterns such as money laundering. This project applies structured SQL analysis to a transactions dataset to identify laundering activity, detect high-risk accounts and locations, and understand behavioral transaction patterns. The objective is to demonstrate how data analysis can support fraud detection and compliance functions.

**Dataset Description-**

Source: Kaggle / Mock financial dataset / Provided dataset
The dataset contains transaction-level records with the following fields:

**Column	Description-**

sender_account-         Account initiating the transaction
receiver_account-       Account receiving the transaction
amount-                 Transaction value
payment_type-           Mode of payment (e.g., UPI, NEFT, Card)
sender_bank_location-	  Geographic location of sender’s bank
receiver_bank_location-	Geographic location of receiver’s bank
transaction_date-	      Date of transaction
is_laundering-          Flag indicating suspicious activity (1 = suspicious, 0 = normal)
laundering_type-	      Category of laundering pattern

**Tools Used-**

SQL (MySQL) — Data analysis and pattern detection

Power BI — Dashboard and visualization (to be uploaded)

GitHub — Project documentation and version control

**Analysis Sections-**


Dataset understanding and profiling

Suspicious transaction analysis using the is_laundering flag

Laundering pattern analysis using laundering_type

Risky account identification

Geographic transaction hotspot analysis

Payment behavior analysis

High-value transaction monitoring and red-flag classification

Time-based transaction trend analysis

**How to Run This Project-**

Import transactions.csv into MySQL.

Create the transactions table using schema.sql.

Execute SQL scripts from the /sql folder in sequence.


**Folder Structure-**

money-laundering-sql-analysis/

│

├── README.md

├── schema.sql

├── setup.md

│

├── data/

│   └── transactions.csv                                                                                                                                                                                                                                                                                                  


│

├── sql/

│   ├── 01_data_understanding.sql

│   ├── 02_suspicious_analysis.sql

│   ├── 03_pattern_analysis.sql

│   ├── 04_account_risk.sql

│   ├── 05_geographic_analysis.sql

│   ├── 06_payment_behavior.sql

│   ├── 07_high_value.sql

│   └── 08_time_trend.sql

│

├── powerbi/

│   └── AML_datanalyis_dashboard.pbix

│
└── outputs/

    └── result_screenshots.png
    
