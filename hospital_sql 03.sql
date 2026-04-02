--1. Retrive all data:
SELECT * FROM hp LIMIT 5;

--2. Which diagnosis patients increasing {we increase the department size based on that}
SELECT diagnosis ,COUNT(patient_id) AS total_patient 
FROM hp
GROUP BY diagnosis ORDER BY total_patient DESC LIMIT 5;

--3. Who doctor attending more patient 
SELECT doctor_name, COUNT(patient_id)AS total_patient
FROM hp GROUP BY doctor_name  ORDER BY total_patient DESC LIMIT 10;

--4. which 5 department is too much premium 
SELECT department, COUNT(patient_id)AS total_patient ,ROUND(SUM(treatment_cost_inr)::numeric,2) AS total_cost
FROM hp GROUP BY department ORDER BY total_cost DESC LIMIT 5;

--5 . Which blood group pepole getting more disease
SELECT blood_group ,COUNT(patient_id) AS total_patient
FROM hp GROUP BY blood_group ORDER BY total_patient DESC;

--6 . Avg treatment cost per department
SELECT department, ROUND(AVG(treatment_cost_inr)::numeric, 2) AS avg_price
FROM hp
GROUP BY department;
 
-- 7. Top 5 cities by revenue
SELECT city,ROUND(SUM(treatment_cost_inr)::numeric,2)AS city_revenue
FROM hp
GROUP BY city
ORDER BY city_revenue DESC
LIMIT 5;

-- 8 Patient whose blood group didn't  test?
SELECT city,blood_group,COUNT(patient_id)AS total_patient
FROM hp GROUP BY city,blood_group
HAVING blood_group = 'Unchecked';

-- 9. Revenue by city and department?
SELECT city, department,ROUND(SUM(treatment_cost_inr)::numeric,2) AS revenue
FROM hp
GROUP BY city, department
ORDER BY city, revenue DESC;

-- 10. Gender wise total revenue? ?
SELECT gender, COUNT(*) AS total_patient,ROUND(SUM(treatment_cost_inr)::numeric,2) AS total_revenue
FROM hp
GROUP BY gender
ORDER BY total_revenue DESC;
  