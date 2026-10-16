# 🏥 Healthcare Patient Analytics & Operational Dashboard 

An end-to-end data analytics project developed to track clinical operations, patient demographics, and financial metrics. This portfolio project demonstrates a production-grade data pipeline: handling raw diagnostic data schemas, processing and feature engineering via **Python**, structural relational warehousing using **SQL**, and crafting an advanced multi-dimensional executive dashboard in **Power BI**.

---

## 🚀 Key Visual Elements & Dashboard Layout
* **Executive Metrics Grid:** Dual-split operational KPIs tracking key business drivers simultaneously across cohorts:
  * **Discharged (Recovered):** Total Patients (**2K**), Avg Stay (**7.82 Days**), Avg Bill (**152.81K**), Total Revenue (**\$256.72M**).
  * **Under Treatment:** Total Patients (**420**), Avg Stay (**7.64 Days**), Avg Bill (**156.46K**), Total Revenue (**\$65.71M**).
* **Clinical Caseload Mapping:** A detailed tree map ranking patient volumes by **Diagnosis** (led by Respiratory Failure: 431, Infection: 426, and Trauma: 419).
* **Advanced Demographic Matrix:** A centrally positioned multi-layered **Treemap** that cross-analyzes **Total Patients by Gender and Room Type** simultaneously, revealing deep volume breakdowns (e.g., Male Semi-Private: 373, Female General Ward: 344, etc.).
* **Total Patients by Age:** Grouped column visualization tracking patient distribution metrics across age brackets dynamically (0, 20, 40, 60, 80).
* **Financial Performance:** A clean horizontal bar chart displaying aggregated metrics for **Total Revenue by Month** (benchmarked against a peak corridor of \$31M in January and May).
* **Interactive Slicers:** On-screen multi-dimensional cross-filtering modules driven by custom **Month Name** grids and **Admission Type** indicators (Elective vs. Emergency vs. Urgent).

---

## 🛠️ Tech Stack & Workflow
1. **Excel:** Structured staging environment for incoming raw clinical dataset metrics.
2. **Python (Pandas, Matplotlib & Seaborn):** Executed data validation, outlier cleaning, automated data transformation logic, and handled programmatic feature engineering (`Per_Day_Cost`). 
3. **SQL (MySQL):** Modeled normalized tables, built performance views (`icu_patient_summary`), and ran query scripts to cross-validate analytical logic.
4. **Power BI Desktop:** Formulated specialized time intelligence DAX scripts, structured dynamic bin sizing arrays, and engineered a modern corporate dashboard user interface with complex nested cross-visuals.

---

## 🔢 Primary DAX Measures Used

### 1. Total Patients
```dax
Total Patients = COUNT(patient_data[PatientID])
```

### 2. Total Revenue Generated
```dax
Total Revenue = SUM(patient_data[Bill Amount])
```

### 3. Chronological Random Date Ingestion
```dax
Admission Date = 
VAR StartDate = DATE(2021, 1, 1)
VAR EndDate = DATE(2026, 12, 31)
VAR TotalDays = INT(EndDate - Start Ignored)
VAR PatientNumber = INT(MID([PatientID], 3, 4))
VAR RandomDays = MOD(PatientNumber * 17, TotalDays)
RETURN
StartDate + RandomDays
```

---

## 📈 Major Insights Derived
1. **Financial Corridor:** Hospital operations show consistent unit economics across status segments, with average billing streams stabilizing around the **$152K - $156K corridor** per admission entry.
2. **Advanced Patient Clustering:** The core workforce and bed density are heavily utilized in the **Semi-Private (Male)** and **ICU (Male)** segments, representing the highest operational room demand.
3. **Capacity Allocation:** **Respiratory Failure** and **Infections** represent the largest operational volume vectors (425+ instances each), acting as baseline requirements for planning clinical inventory.

---

