# Digital Payments Transaction Analysis Dashboard

## 📌 Objective
Analyze digital payment transactions to uncover trends in customer behavior, transaction performance, and operational efficiency, with a focus on supporting financial reporting and data-driven decision-making.

## 🧹 Data Preparation
Data preprocessing was performed using Google Colab to ensure clean, structured, and analysis-ready data before visualization in Power BI.
- Loaded raw dataset into Google Colab for preprocessing and exploration  
- Handled missing values and removed duplicate transaction records  
- Standardized categorical variables (transaction type, status, device type, network type)  
- Converted timestamp into structured time-based features (hour, day of week, weekend indicator)  
- Created customer segmentation fields such as age groups  
- Engineered additional analytical fields including fraud flag indicators and performance metrics  
- Exported cleaned dataset for use in Power BI dashboard development

## 🛠 Tools Used
- Power BI
- SQL
- Excel

## 📊 Key Metrics
- Total Transaction Value
- Transaction Volume
- Transaction Success Rate
- Average Transaction Value

## 📊 Analytical Focus
- Transaction performance monitoring (success vs. failure trends)
- Customer segmentation (age group, device type)
- Revenue and transaction value distribution analysis
- Time-based transaction behavior analysis
- Operational efficiency and anomaly detection

## 🔍 Key Insights
- Mobile (Android) users aged 26–45 generate the highest transaction value, indicating strong adoption among core earning demographics
- Transaction activity peaks between 12 PM and 8 PM, aligning with business and post-work hours
- Peer-to-Peer (P2P) transactions dominate overall volume, highlighting primary usage patterns
- Variations in network type reveal differences in transaction success rates, indicating potential performance or infrastructure gaps

## 📈 Dashboard Preview
The dashboard provides an interactive view of transaction performance, user behavior, and operational trends across multiple dimensions.
<img width="631" height="377" alt="Capture23" src="https://github.com/user-attachments/assets/eb674805-a474-4919-83d0-d109edfbc6d0" />

## 📐 DAX Measures Used
The following DAX measures were created in Power BI to support KPI tracking and financial analysis.
### Total Transactions
Total Transactions = COUNT('upi_transactionS_2024'[transaction_id])
Total Transactions Volume = SUM('upi_transactionS_2024'[amount(INR)])
Average Transactions Volume = AVG('upi_transactionS_2024'[amount(INR)])

## 📁 Files Included
- Power BI Dashboard (.pbix)
- Exported Dashboard (.pdf)
- Dataset (.csv)

## 💡 Business Impact
This dashboard simulates real-world financial transaction monitoring and reporting used in banking and payment operations. It enables stakeholders to identify trends, monitor performance, detect inefficiencies, and make data-driven decisions to improve operational efficiency, reduce transaction failures, and enhance revenue outcomes.
