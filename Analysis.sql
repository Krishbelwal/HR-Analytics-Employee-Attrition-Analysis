use Employee_Attrition;
select * from Employee_Attrition;


                                               -- Analysis 


-- Age_group vs Attrition 
select Age_group , sum(case when Attrition = 'Yes' Then 1 Else 0 End) As Total_Attrition , 
Round((sum(case when Attrition = 'Yes' Then 1 Else 0 End) / count(*)) * 100 , 2) As Age_attrition_rate  from Employee_attrition 
group by 
Age_Group 
order by Age_attrition_rate desc;


-- Gender vs Attrition
select Gender , sum(case when Attrition = 'Yes' Then 1 Else 0 End) As Total_Attrition , 
Round((sum(case when Attrition = 'Yes' Then 1 Else 0 End) / count(*)) * 100 , 2) As Gender_attrition_rate  from Employee_attrition 
group by 
Gender
order by Gender_attrition_rate desc;



-- Department vs Attrition
select Department , sum(case when Attrition = 'Yes' Then 1 Else 0 End) As Total_Attrition , 
Round((sum(case when Attrition = 'Yes' Then 1 Else 0 End) / count(*)) * 100 , 2) As Department_attrition_rate  from Employee_attrition 
group by 
Department
order by Department_attrition_rate desc;


-- job role vs Attrition
Select job_role , sum(case when Attrition = 'Yes' Then 1 Else 0 End) As Total_Attrition , 
Round((sum(case when Attrition = 'Yes' Then 1 Else 0 End) / count(*)) * 100 , 2) As job_role_attrition_rate  from Employee_attrition 
group by 
job_role
order by job_role_attrition_rate desc
limit 5;


-- Job_Satisfaction vs Attrition
Select Job_Satisfaction , sum(case when Attrition = 'Yes' Then 1 Else 0 End) As Total_Attrition , 
Round((sum(case when Attrition = 'Yes' Then 1 Else 0 End) / count(*)) * 100 , 2) As attrition_rate  from Employee_attrition 
group by 
Job_Satisfaction
order by attrition_rate desc;



-- Company year vs Atttrition
Select YearsAtCompany , sum(case when Attrition = 'Yes' Then 1 Else 0 End) As Total_Attrition , 
Round((sum(case when Attrition = 'Yes' Then 1 Else 0 End) / count(*)) * 100 , 2) As attrition_rate  from Employee_attrition 
group by 
YearsAtCompany
order by attrition_rate desc;



-- Current Role vs Attrition-- 
Select YearsINCurrentRole, sum(case when Attrition = 'Yes' Then 1 Else 0 End) As Total_Attrition , 
Round((sum(case when Attrition = 'Yes' Then 1 Else 0 End) / count(*)) * 100 , 2) As attrition_rate  from Employee_attrition 
group by 
YearsINCurrentRole
order by attrition_rate desc;


-- YearsSinceLastPromption vs Attrition-- 

Select YearsSinceLastPromption, sum(case when Attrition = 'Yes' Then 1 Else 0 End) As Total_Attrition , 
Round((sum(case when Attrition = 'Yes' Then 1 Else 0 End) / count(*)) * 100 , 2) As attrition_rate  from Employee_attrition 
group by 
YearsSinceLastPromption
order by attrition_rate desc;





