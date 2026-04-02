# 🏥 Hospital Analysis Overview: End-to-End Data Pipeline
--https://app.powerbi.com/Redirect?action=openreport&context=Annotate&ctid=ef51de3c-3b7d-4e60-a91b-e607598f3278&pbi_source=mobile_android&groupObjectId=5fce47b5-fbea-4a9e-81c4-e71319fd5d85&reportObjectId=01ab3171-56c4-4fe7-91d4-34bd97aef6e4&reportPage=8c60c37538744f62fbf5&bookmarkGuid=a21d5c2f-34ee-4832-8558-0e2ac1853d14&fullScreen=0

## 📊 Project Overview
This project demonstrates a full data analytics workflow—from cleaning "dirty" hospital records to building an interactive **Power BI** dashboard. The goal was to analyze patient demographics, department performance, and revenue trends to improve hospital operational efficiency.

---

## 🛠️ Tech Stack
| Phase | Tool |
| :--- | :--- |
| **Data Cleaning** | Excel Power Query & Python (Pandas) |
| **Database** | PostgreSQL (SQLAlchemy) |
| **Analysis** | SQL (CTEs, Window Functions, Joins) |
| **Visualization** | Power BI |

---

## 🚀 The Data Pipeline

### 1. Data Cleaning (Python & Power Query)
The raw dataset (`DIRTY_01_hospital_patients`) had several issues like missing values and inconsistent formatting. 
*   **Handling Nulls:** Filled missing `blood_group` with "Unchecked" and `insurance_type` with "No".
*   **Standardization:** Used `.str.title()` in Pandas to fix city names and ward types.
*   **Date Conversion:** Converted `admission_date` and `discharge_date` into proper datetime formats.

### 2. SQL Analysis
I migrated the cleaned data to **PostgreSQL** to perform deep-dive analysis. Key queries included:
*   **Top Cities by Revenue:** Identifying which regions contribute most to the hospital's growth.
*   **Departmental Costs:** Calculating the average treatment cost per department.
*   **Patient Trends:** Analyzing blood group distribution and readmission rates.

### 3. Power BI Dashboard
The final dashboard provides a 360-degree view of hospital performance:
*   **KPIs:** $134.47M Total Revenue | 3,201 Total Patients | 15 Doctors.
*   **Patient Analysis:** Distribution by Ward Type (General, Private, ICU) and Diagnosis.
*   **Revenue Insights:** Performance breakdown by City and Department.

---

## 📸 Dashboard Preview

### 1. Hospital Overview
<img width="1366" height="768" alt="Screenshot (111)" src="https://github.com/user-attachments/assets/2c3ecf66-993b-4bfa-ae87-8b49f60ac145" />

### 2. Patient Analysis 
<img width="1366" height="768" alt="Screenshot (112)" src="https://github.com/user-attachments/assets/1eb45fbb-cdd2-4c58-a0ee-72e19f0aaffb" />

### 3. Department & Revenue
<img width="1366" height="768" alt="Screenshot (113)" src="https://github.com/user-attachments/assets/54e4ba66-712b-4c0a-9e88-d02a1bf0ca05" />

---

## 💡 Key Insights
*   **Top Revenue City:** **Chennai** leads in total revenue generation.
*   **Ward Preference:** **General Wards** see the highest volume of patients, accounting for ~45% of total revenue.
*   **Key Departments:** **Cardiology and Oncology** are the busiest departments with the highest patient engagement.

---

## 📂 Project Structure
*   `data/`: Raw and Cleaned CSV files.
*   `notebooks/`: Python scripts for data cleaning (`hospital_cleaning.ipynb`).
*   `sql/`: SQL queries for data analysis.
*   `dashboard/`: Power BI file (`Hospital_Analysis.pbix`).

---
**Developed by Manoj Kumar**
