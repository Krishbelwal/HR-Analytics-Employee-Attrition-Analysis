# HR Analytics - Employee Attrition Project

![Front page](Front_Page.png)  
![Dashboard1](Dashboard1.png)  
![Dashboard2](Dashboard2.png)  

---

## 1. Project Overview
This project analyzes employee attrition data to identify key factors influencing employee turnover, such as age, gender, department, salary, job role, job satisfaction, and career growth patterns.  

The goal is to understand why employees leave the company and provide data-driven insights to improve employee retention and support better HR decision-making.

---

## 2. Key Metrics
- Age group vs Attrition  
- Gender vs Attrition rate  
- Department vs Attrition  
- Salary vs Attrition  
- Years in current role vs Attrition  
- Job Role vs Attrition  
- Job Satisfaction vs Attrition  
- Promotion vs Attrition  
- Years in company vs Attrition  

---

## 3. Dataset
- **Source:** Kaggle  
- **Total Records:** 15,000  
- **Columns:** 38  

---

## 4. Tools & Technologies
- **SQL (MySQL):** Data cleaning, data transformation, creating views, and exploratory data analysis  
- **Power BI:** Dashboard creation, data visualisation, and interactive reporting  
- **DAX (Data Analysis Expressions):** Creating KPIs like Total Employees, Attrition Rate, and custom measures  
- **Power Query:** basic data cleaning 

---

## 5. Data Cleaning Steps
- Checked duplicates (Emp_ID-wise and row-wise)  
- Handled null values using the `COALESCE` function  
- Changed data types where required  
- Performed data transformation  

Example:
- Converted values like `0-5` in "Years at Company" column to `0-5y` for better readability  

---

## 6. Dataset Link
- **Dataset:** [Download CSV](https://github.com/Krishbelwal/HR-Analytics---Employee-Attrition-Dashboard/blob/main/Dataset.csv)  

---

## 7. Project Workflow
1. Data Import: Imported dataset from Kaggle  
2. Business Understanding: Identified key problems and requirements  
3. Defined KPIs: Age group, gender, department, etc. vs attrition  
4. Data Cleaning & Transformation: Cleaned data using MySQL and Power Query  
5. Data Analysis: Performed SQL-based analysis  
6. View Creation: Created SQL views for Power BI import  
7. Power BI Import: Loaded processed data into Power BI  
8. DAX Measures: Created KPIs like Total Employees, Attrition Count, etc.  
9. Dashboard Development: Built interactive dashboards with visuals and slicers  
10. Insights & Recommendations: Derived business insights for decision-making  

---

# 📊 Key Insights & Business Recommendations

## 1. Age Group

### Insight
The highest attrition was found in the 26–35 age group. Major factors identified include salary, overtime, job satisfaction, and promotion. This shows employees in this age group are more concerned about growth, salary, and work-life balance.

### Recommendation
- Improve salary structure.
- introduce promotion policies
- provide clear growth opportunities

---

## 2. Gender
### Insight
Attrition was slightly higher among male employees, especially in the 0–5 years experience group. major factors identified - low salary, promotions, workload, and current role. This indicates that employees in the early stage of their careers are more concerned about salary, growth opportunities and workload issues.

### Recommendation
- Offer competitive salary packages for early-career employees
- provide clear career growth opportunities.
- Provide timely promotions  
- Improve work-life balance 

---

## 3. Department
### Insight
The **R&D department** showed the highest attrition, mostly due to salary concerns, and delayed promotions. This indicates that employees are leaving the company in this department due to salary and career growth concerns.

### Recommendation
- Improve salary structure
- introduce promotion policies for this department Employees

---

## 4. Job Role

### Insight
Higher attrition was observed among **Lab Technicians** and **Sales Executives**, particularly in the **0–5 years experience group**. major  factors indentified - job Satisfaction, salary,  promotion issues and current role. This indicates that this job role Employees in this role are leaving company due to dissatisfaction, compensation issues and career growth opportunities.

### Recommendation
- Conduct regular feedback sessions to understand employee concerns and improve job satisfaction.
- Provide better compensation  
- Improve career progression opportunities specially  0-5 years employees in the company.

---

## 5. Job Satisfaction
### Insight
Employees with low or neutral job satisfaction showed higher attrition, especially in the 0–5 years experience group. This indicates that early-career employees may not be fully satisfied with company policies, work environment, or growth opportunities.

### Recommendation
- Conduct regular feedback and communication sessions with these employees to understand their concerns.

---

## 6. Years in Company
### Insight
Employees with **0–5 years in the company** showed the highest attrition. The main reasons were low salary, overtime, low job satisfaction, and lack of career growth.

### Recommendation
- Introduce structured career development programs  
- Provide timely promotions  
- Manage workload effectively  
- Strengthen employee engagement strategies  

---

## 7. Salary
### Insight
Higher attrition was observed among employees with lower salary levels, indicating low compensation is a major factor behind employee turnover.


### Recommendation
- Improve salary structures  
- Introduce performance-based rewards

---

## 8. Promotions
### Insight
early carrier Employees (0-5) were more likely to leave the company, indicating limited career growth for early carrier employees.

### Recommendation
- Implement timely promotion policy for this group

---

## 9. Current Role
### Insight
Employees staying in the same role  duration (0-5) showed higher attrition, indicating limited growth opportunities.

### Recommendation
- Introduce internal job movement opportunities for this group employees



## 9. Conclusion

This HR Analytics project provides clear insights into employee turnover. The major factors identified are compensation issues, workload concerns, and limited career growth opportunities, especially among employees in the 0–5 years experience group. This indicates that early-career employees are more likely to leave due to lack of satisfaction in pay, workload balance, and growth opportunities.
