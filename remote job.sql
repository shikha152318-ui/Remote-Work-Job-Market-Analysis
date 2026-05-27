create database remotes_jobs

---checking data from table--
use remotes_jobs
select * from remote

---finding number of rows--
select count(*) as number_of_rows from remote



--------Data Cleaning-----
delete from remote 
where gender= 'Non-binary';

alter table remote
drop column Access_to_Mental_Health_Resources
,physical_activity,

alter table remote
drop column Social_Isolation_Rating


select * from remote

---Data Exploration-----
 --1) Productivity and Workload

 ---calculating Average hours per week---

 SELECT 
    AVG(Hours_Worked_Per_Week) AS avg_hours_worked
FROM remote


---calculating meeting per employee per week

SELECT AVG(Number_of_Virtual_Meetings) as avg_meeting 
FROM remote

--2)Employee Well_being

----Calculating Avearge work life balance rating--

SELECT AVG(Work_Life_Balance_Rating) as avg_rating
from remote

---3) Organizational Support
---Calculating Average Company Support Rating
SELECT AVG(Company_support_for_remote_work) as avg_company_support
from remote

---Calculating % Employees Reporting High Support (≥ 4)

SELECT COUNT(Company_support_for_remote_work)/count(*) *100 as per_of_high_support_employee
from remote
where company_support_for_remote_work>=4

select COUNT(ID) as number_of_employee , Mental_Health_Condition
FROM remote
group by Mental_Health_Condition 


select COUNT(ID) as number_of_employee , stress_level,Gender
FROM remote
group by Stress_Level ,gender


select COUNT(ID) as number_of_employee , Work_Location,Gender
FROM remote
group by Work_Location,Gender


select COUNT(ID) as number_of_employee , Productivity_Change,Gender
FROM remote
group by Productivity_Change,Gender
ORDER BY Gender




select COUNT(ID) as number_of_employee , Sleep_Quality,Gender
FROM remote
group by Sleep_Quality,Gender
ORDER BY Gender


select COUNT(ID) as number_of_employee , Satisfaction_with_Remote_Work,Gender
FROM remote
group by Satisfaction_with_Remote_Work,Gender
ORDER BY Gender


select COUNT(ID) as number_of_employee , Job_Role,Gender
FROM remote
group by Job_Role,Gender
ORDER BY Gender

select COUNT(ID) as number_of_employee , Industry,Gender
FROM remote
group by Industry,Gender
ORDER BY Gender

select avg(Age) as avg_age , Job_Role,Gender
FROM remote
group by Job_Role,Gender
ORDER BY Gender


select avg(Age) as avg_age , Industry,Gender
FROM remote
group by Industry,Gender
ORDER BY Gender

select COUNT(ID) as number_of_employee,Years_of_Experience
FROM remote
group by Years_of_Experience
