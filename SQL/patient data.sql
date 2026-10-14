create database Healthcare_Analytics_DB;
use Healthcare_Analytics_DB;

select * from healthcare_analytics_db.patient_data;

select Diagnosis, count(PatientID) as Total_Patients
from patient_data 
group by Diagnosis
order by Total_Patients desc;

select `Room Type`, round(avg(`bill Amount`), 2) as Avg_Bill_Amount
from patient_data
where `Room Type` ="ICU";

select Diagnosis, round(avg(`Stay Days`), 1) as Stay_Duration_Days
from patient_data
group by Diagnosis
order by Stay_Duration_Days desc;

select AdmissionType, sum(`Bill Amount`) as Total_Revenue
from Patient_data
where AdmissionType ="Emergency";

select DoctorName, count(PatientID) as Patient_Treated
from patient_data
group by DoctorName
order by patient_Treated desc
limit 5;


create view icu_patient_summary as
select `Room Type`, round(avg(`Bill Amount`), 2) as avg_bill_amount
from patient_data
where `Room Type` ="ICU" ;

SELECT * FROM healthcare_analytics_db.icu_patient_summary;



