use Employee_Attrition;
select * from Employee_Attrition;
  
  
  
														-- Data cleaning --	
Describe Employee_Attrition;
                                                        
											        -- Checking duplicate --
-- particular column wise duplicate
select Emp_id , count(*) As Duplicate 
from employee_attrition
group by Emp_id
having Duplicate > 1; 


-- Exact row wise
SELECT
    Emp_id,
    Age,
    Age_group,
    Attrition,
    Business_Travel,
    Daily_Rate,
    Department,
    DistanceFromHome,
    Education,
    Education_Field,
    Employee_count,
    Employee_number,
    Enviourment_Satisfaction,
    Gender,
    Hourly_rate,
    job_involvment,
    job_level,
    job_role,
    job_satisfaction,
    Marital_status,
    Monthly_income,
    salary_slab,
    Monthly_rate,
    NumOfworkedInCompany,
    over18,
    OverTime,
    present_salary_hike,
    performance_rating,
    Relationship_satisfaction,
    standard_hours,
    stock_option_level,
    Total_Working_Years,
    Training_Time_LastYear,
    work_life_balance,
    YearsAtCompany,
    YearsINCurrentRole,
    YearsSinceLastPromption,
    YearsWithCurrentManager,
    COUNT(*) AS Duplicate_Count
FROM hr_employee
GROUP BY
    Emp_id,
    Age,
    Age_group,
    Attrition,
    Business_Travel,
    Daily_Rate,
    Department,
    DistanceFromHome,
    Education,
    Education_Field,
    Employee_count,
    Employee_number,
    Enviourment_Satisfaction,
    Gender,
    Hourly_rate,
    job_involvment,
    job_level,
    job_role,
    job_satisfaction,
    Marital_status,
    Monthly_income,
    salary_slab,
    Monthly_rate,
    NumOfworkedInCompany,
    over18,
    OverTime,
    present_salary_hike,
    performance_rating,
    Relationship_satisfaction,
    standard_hours,
    stock_option_level,
    Total_Working_Years,
    Training_Time_LastYear,
    work_life_balance,
    YearsAtCompany,
    YearsINCurrentRole,
    YearsSinceLastPromption,
    YearsWithCurrentManager
HAVING COUNT(*) > 1;




                                                         -- checking Null values -- 
                                                         
                                                         
select * from Employee_Attrition where Emp_id is null 
or Age is null
or Age_group is null
or Business_Travel is null
or Daily_Rate is null
or Department is null
or DistanceFromHome is null
or Education is null
or Education_Field is null
or Employee_count is null
or Employee_number is null
or Gender is null
or Hourly_rate is null
or job_involvment is null
or job_level is null
or job_role is null
or job_satisfaction is null
or Marital_status is null
or Monthly_income is null
or salary_slab is null
or Monthly_rate is null
or NumOfworkedInCompany is null
or over18 is null
or OverTime is null
or present_salary_hike is null
or performance_rating is null
or Relationship_satisfaction is null
or standard_hours is null
or stock_option_level is null
or Total_Working_Years is null
or Training_Time_LastYear is null
or work_life_balance is null
or YearsAtCompany is null
or YearsINCurrentRole is null
or YearsSinceLastPromption is null
or YearsWithCurrentManager is null;
                                       
									
                                    
                                    -- Check inconsistency -- 
Select * From Employee_Attrition
Where Age < 0 
Or Monthly_income < 0;




                                               -- Data transformation -- 
Alter Table Employee_Attrition modify column Education varchar(20);
update Employee_Attrition 
set Education = case 
when 
Education = 1 Then '10th'
when 
Education = 2 Then '12th'
When 
Education = 3 Then 'undergraduate'
When
Education = 4 Then 'Graduate'
When
Education = 5 Then 'postgraduate'
Else 'unknown' End;



Alter Table Employee_Attrition modify column `job_satisfaction` varchar(20);
update Employee_Attrition 
set job_satisfaction = case 
when 
job_satisfaction = 1 Then 'Very Dissatisfied'
when 
job_satisfaction = 2 Then 'Dissatisfied'
When 
job_satisfaction = 3 Then 'Neutral'
When
job_satisfaction = 4 Then 'satisfied'End;

set sql_safe_updates = 0;
Alter Table Employee_Attrition modify column `YearsAtCompany` varchar(10);
update Employee_Attrition 
set YearsAtCompany = case 
when 
YearsAtCompany between 0 And 5 Then '0-5 Years'
when 
YearsAtCompany between 6 And 10 Then '6-10'
When 
YearsAtCompany Between 11 And 15 Then '11-15'
When
YearsAtCompany Between 16 And 20 Then '16-20' 
When
YearsAtCompany Between 21 And 25 Then '21-25' 
When
YearsAtCompany Between 26 And 30 Then '26-30' 
When
YearsAtCompany Between 31 And 35 Then '31-35'
When
YearsAtCompany Between 36 And 40 Then '36-40'  
Else '41+'
End;


set sql_safe_updates = 0;
Alter Table Employee_Attrition modify column `YearsINCurrentRole` varchar(10);
update Employee_Attrition 
set YearsINCurrentRole = case 
when 
YearsINCurrentRole between 0 And 5 Then '0-5'
when 
YearsINCurrentRole between 6 And 10 Then '6-10'
When 
YearsINCurrentRole Between 11 And 15 Then '11-15'
Else '15+'
End;



Alter Table Employee_Attrition modify column `YearsSinceLastPromption` varchar(10);
update Employee_Attrition 
set YearsSinceLastPromption = case 
when 
YearsSinceLastPromption between 0 And 5 Then '0-5'
when 
YearsSinceLastPromption between 6 And 10 Then '6-10'
When 
YearsSinceLastPromption Between 11 And 15 Then '11-15'
Else '15+'
End;
select `YearsSinceLastPromption` , count(*) from employee_attrition group by `YearsSinceLastPromption`;