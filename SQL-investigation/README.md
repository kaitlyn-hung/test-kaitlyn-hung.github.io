# SQL Queries to Investigate Security Incidents

### Purpose
Demonstrates my proficiency with SQL by filtering organization data to investigate all potential security issues and update employee computers as needed. The following steps provide examples of how I used SQL with filters to perform security-related
tasks.


### Skills Demonstrated

---

### Task 1️⃣: Retrieve after hours failed login attempts
There was a potential security incident that occurred after business hours (after 18:00). All after hours login attempts that failed need to be investigated. Following code demonstrates how I created an SQL query to retrieve records from different datasets and filter login attempts that occurred after business hours. 
```
SELECT * FROM log_in_attempts WHERE login_time > '18:00' AND success = FALSE;
```
First, I selected all data from the log_in_attempts table. Then, I used a WHERE clause with an AND operator to show only failed login attempts after 18:00. The conditions are login_time > '18:00' and success = FALSE. The resulting output is shown below. 
<img width="590" height="79" alt="Screen Shot 2025-11-03 at 3 20 33 PM" src="https://github.com/user-attachments/assets/ebcef149-4cd1-4741-83c3-8b3fea19204b" />


### Task 2️⃣: Retrieve login attempts on specific dates
A suspicious event occurred on 2022-05-09. Any login activity that happened on 2022-05-09 or on the day before needs to be investigated. The following code demonstrates how I created a SQL query to filter for login attempts that occurred on specific dates.
```
SELECT * FROM log_in_attempts WHERE login_date = '2022-05-09' OR login_date = '2022-05-08';
```
<img width="592" height="75" alt="Screen Shot 2025-11-03 at 3 39 26 PM" src="https://github.com/user-attachments/assets/8298d550-1891-4025-9d82-7d01e003198e" />


### Task 3️⃣: Retrieve employees in Marketing
The team wants to update the computers for certain employees in the Marketing department. The following code demonstrates how I created a SQL query to filter for employee machines from employees in the Marketing department in the East building.
```
SELECT * FROM employees WHERE department = 'Marketing' AND office LIKE 'East%'; 
```
This query returns all employees in the Marketing department in the East building. I used LIKE with East% as the pattern to match because the data in the office column represents the East building with the specific office number. 
<img width="588" height="100" alt="Screen Shot 2025-11-03 at 3 54 37 PM" src="https://github.com/user-attachments/assets/dcbdcd31-7460-4490-862d-a633fb69583f" />


### Task 4️⃣: Retrieve employees in Finance or Sales
The machines for employees in the Finance and Sales departments also need to be updated.
Since a different security update is needed, I have to get information on employees only from
these two departments.
The following code demonstrates how I created a SQL query to filter for employee machines
from employees in the Finance or Sales departments.
```
```


### Task 5️⃣: Retrieve all employees not in IT
Install tcpdump and Suricata. 
```bash
sudo apt install suricata
```
<br>

---
## Summary

