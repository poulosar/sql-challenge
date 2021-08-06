# sql-challenge


# Prerequisite 
To run the bonus, you must install psycopg2.From a terminal, run this: `pip install psycopg2`
You must also have Jupyter Labs installed. The version i am running is 3.0.16. If you have errors in your code, please update to this version.

Please create a config file located in the local repository>EmployeeSQL>Bonus. Name this config "config.py" and format it as follows\n
```
username:"your postgres username here"
password: "your postgres password here"
```

# SQL Homework - Employee Database: A Mystery in Two Parts

![sql.png](sql.png)

## Background
I will be using the following skills to go through the database and find valuable information.

1. Data Modeling

2. Data Engineering

3. Data Analysis

### Before You Begin

## Instructions

#### Data Modeling



#### Data Engineering


#### Data Analysis

The following details will be found in the databse

1. List the following details of each employee: employee number, last name, first name, gender, and salary.

2. List employees who were hired in 1986.

3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.

4. List the department of each employee with the following information: employee number, last name, first name, and department name.

5. List all employees whose first name is "Hercules" and last names begin with "B."

6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

## Extra
After parsing through the data, there is a suspicion that the data might be fake or falsified. We will need to investigate further to see if the data is in fact false or not.

1. Import the SQL database into Pandas. (Yes, you could read the CSVs directly in Pandas, but you are, after all, trying to prove your technical mettle.) This step may require some research. Feel free to use the code below to get started. Be sure to make any necessary modifications for your username, password, host, port, and database name:

2. Create a histogram to visualize the most common salary ranges for employees.

3. Create a bar chart of average salary by title.

