# HR Employee Attrition Analysis | MySQL & Power BI


![Front page](FrontPage.png)  
![Dashboard1](Dashboard2.png)  
![Dashboard2](Dashboard1.png)  


## 1. Project Overview

This project focuses on analyzing historical HR employee data to identify patterns and factors associated with employee attrition.

Using **MySQL** for data preparation, basic data cleaning, transformation, and SQL-based analysis, along with **Power BI** for interactive dashboard development, I explored employee attrition across demographics, tenure, and career progression.

The objective is to identify employee groups experiencing comparatively higher attrition and provide actionable insights to support data-driven HR decision-making.

## 2. Tools & Technologies

- **MySQL:** Database creation, data cleaning, transformation, and SQL-based business analysis.
- **MySQL Workbench:** Database management and SQL query execution.
- **Microsoft Excel:** Initial dataset handling and import preparation.
- **Power BI:** Interactive dashboard development and data visualization.
- **DAX:** Creation of calculated measures for workforce KPIs.

## 3. Business Requirements

### 3.1 Business Questions

The analysis was guided by the following business questions:

**1. Demographic and Organizational Analysis**
- Which age groups experience higher employee attrition?
- Which department have comparatively higher attrition?
- Which job roles contribute the most to employee exits?
- Which gender  experience higher employee attritio?

**2. Job Satisfaction Analysis**
- How does employee attrition vary across job satisfaction categories?

**3. Employee Tenure Analysis**
- How does attrition vary across different years of service at the company?
- How does attrition vary across different years in current role at the company?4
 
**4. Career Progression Analysis**
- How does attrition vary based on the number of years since the last promotion?

### 3.2 Key Performance Indicators (KPIs)

| KPI | Purpose |
|---|---|
| Total Employees | Measures the overall employee population included in the analysis. |
| Attrition Count | Measures the number of employees who left the organization. |
| Active Employees | Measures the number of employees who stayed with the organization. |
| Attrition Rate | Measures the percentage of employees who left out of the total employee population. |

### 3.3 Analytical Dimensions

| Analytical Dimension | Purpose |
|---|---|
| Attrition by Age Group | Identifies age groups with comparatively higher attrition. |
| Attrition by Gender | Compares attrition patterns between male and female employees. |
| Attrition by Department | Identifies departments experiencing higher employee exits. |
| Attrition by Job Role | Highlights job roles contributing more to total employee exits. |
| Attrition by Job Satisfaction | Examines how attrition varies across satisfaction categories. |
| Attrition by Years at Company | Evaluates attrition patterns across different company-tenure groups. |
| Attrition by Years in Current Role | Examines whether time spent in a current role is associated with employee exits. |
| Attrition by Years Since Last Promotion | Evaluates attrition patterns across different promotion-tenure groups. |


## 4. Project Workflow

### 4.1 Data Source

- Downloaded the HR employee dataset from Kaggle.
- The dataset contains **1,469 records and 38 columns**.
- It includes employee demographics, organizational information, compensation, job satisfaction, performance, and career progression details.

### 4.2 Database Creation and Data Import

I used MySQL Workbench to prepare the dataset for SQL analysis.

**Activities performed:**
- Created a database in MySQL.
- Created an HR employee table.
- Imported the Kaggle dataset into MySQL Workbench.

This provided a structured environment for performing SQL-based analysis.

### 4.3 Data Cleaning

Performed basic data quality checks to ensure the dataset was suitable for analysis.

**Activities performed:**
- Checked column data types.
- Checked for missing and NULL values.
- Checked for duplicate records.

**Outcome:** No missing values or duplicate records were found in the dataset.

### 4.4 Data Transformation

Transformed numerical tenure columns into meaningful experience groups to make attrition comparisons easier.

The following columns were grouped into ranges such as 0–5, 6–10, and 11–15 years:

- Years at Company
- Years in Current Role
- Years Since Last Promotion

### 4.5 SQL Data Analysis

I wrote SQL queries based on the defined business questions.

### 4.6 Power BI Integration

Connected Power BI directly to the MySQL database using the database connector and imported the required HR employee data for dashboard development.

### 4.7 DAX Measures

Created four DAX measures to calculate the primary workforce KPIs displayed on the dashboard.

| DAX Measure | Purpose |
|---|---|
| Total Employees | Calculates the total number of employees in the dataset. |
| Attrition Count | Calculates the number of employees who left the organization. |
| Active Employees | Calculates the number of employees who stayed. |
| Attrition Rate | Calculates the percentage of employees who left out of the total employee population. |

### 4.8 Power BI Dashboard Development

Developed an interactive HR Employee Attrition Dashboard to present the analysis in a structured and easy-to-understand format.

**KPI Cards**

The dashboard includes four primary KPI cards:

- Total Employees
- Attrition Count
- Active Employees
- Attrition Rate

**Visualizations**

| Visualization | Purpose |
|---|---|
| Stacked Column Chart | Compares employee attrition across selected categories using vertical columns. |
| Stacked Bar Chart | Compares attrition across employee groups using horizontal bars. |
| Pie Chart | Displays the distribution of employee attrition across categories. |

**Interactive Slicers**

Added interactive slicers to allow users to filter the dashboard dynamically:

- Department
- Job Role
- Age Group
- Gender
- Attrition Status

---

## 5. Key Insights & Business Recommendations

The following insights were derived from the SQL analysis and Power BI dashboard.

### 5.1 Age Group

**Insight:**
- Employees aged 18–25 have the highest attrition rate of **36.07%**.

**Business Implication:**
- Early-career employees may experience challenges related to onboarding, workplace adjustment, job expectations, or career growth.

**Business Recommendation:**
- Introduce structured onboarding, mentorship programs, regular feedback sessions, and clear career-development pathways to support early-career employees.

### 5.2 Gender

**Insight:**
- Male employees have a gender-wise attrition rate of **17.06%**, compared with **14.90%** for female employees.

**Business Implication:**
- Attrition patterns differ across gender groups and require further investigation to understand possible organizational or role-related differences.

**Business Recommendation:**
- Conduct gender-wise analysis across departments and job roles to identify potential workplace challenges and evaluate whether targeted interventions are required.

### 5.3 Department

**Insight:**
- Sales and Human Resources departments show comparatively higher employee attrition.

**Business Implication:**
- Department-specific challenges related to workload, management practices, job expectations, or employee satisfaction may require further investigation.

**Business Recommendation:**
- Evaluate workload distribution, management practices, and employee satisfaction in these departments to identify potential retention challenges.

### 5.4 Job Role

**Insight:**
- Sales Representatives account for the highest proportion of employee exits, contributing **33.19% of total attrition**.

**Business Implication:**
- Potential retention challenges may be associated with sales targets, performance pressure, workload, or compensation.

**Business Recommendation:**
- Review sales targets, incentive structures, workload distribution, and compensation policies to identify possible areas for improvement.

### 5.5 Job Satisfaction

**Insight:**
- Employees in the Very Dissatisfied category show higher attrition rates compared with employees in the Satisfied category.

**Business Implication:**
- Lower job satisfaction is associated with higher employee attrition and may indicate challenges related to the work environment or employee experience.

**Business Recommendation:**
- Conduct employee satisfaction surveys and improve management support, the work environment, and employee engagement initiatives.

### 5.6 Years at Company

**Insight:**
- Employees with 0–5 years of tenure have an attrition rate of **21.09%**, accounting for **163 employee exits**.
- Although the 31–35 and 36–40 years groups show higher attrition rates of **25%**, each represents only one employee exit.

**Business Implication:**
- Employee exits are more concentrated among employees with shorter tenure. The higher percentages in the 31–35 and 36–40 years groups are based on very small employee counts and should not be interpreted as strong patterns.

**Business Recommendation:**
- Strengthen onboarding, mentorship, regular feedback, and career-development opportunities for early-tenure employees.

### 5.7 Years in Current Role

**Insight:**
- Employees with 0–5 years in their current roles show a comparatively higher attrition rate of **19.06%**.

**Business Implication:**
- Potential challenges may relate to role adjustment, workload, job expectations, or limited growth opportunities.

**Business Recommendation:**
- Provide role-specific training, regular manager feedback, clear job expectations, and career-development opportunities to support employees in their current roles.

### 5.8 Years Since Last Promotion

**Insight:**
- Attrition rates remain relatively consistent across different promotion-tenure groups, ranging approximately between **20% and 21%**.

**Business Implication:**
- Time since the last promotion alone does not show a substantial difference in attrition across these groups.

**Business Recommendation:**
- Review promotion policies, career-growth opportunities, and internal mobility programs. Combine promotion-related analysis with job satisfaction, employee tenure, and performance data for a broader understanding of career progression.

---

## 6. Business Impact

The HR Employee Attrition Dashboard provides a structured view of historical employee attrition patterns and helps HR stakeholders:

- Identify high-attrition employee segments, with the 18–25 age group showing a **36.07% attrition rate**.
- Highlight Sales Representatives as the largest contributor to employee exits, accounting for **33.19% of total attrition**.
- Understand workforce attrition patterns across demographics, departments, job satisfaction, employee tenure, and career progression.
- Explore employee attrition through interactive Power BI visualizations and dynamic filters.
- Identify potential retention challenges and support informed HR decision-making through data-driven insights and recommendations.

---

## 7. Author

**Krishna Belwal**

- **Domain:** Human Resources (HR)
- **Tools & Technologies:** MySQL | Power BI | DAX | Excel
- **Project Category:** HR Analytics
- **Project Type:** Data Analytics & Business Intelligence
