

    -- Which query lists employees who belong to departments in which the average salary is above 50,000?



-- 1st METHOD 
    -- First create a table with departments whose avg salary > 50k.. 

    -- then for each employee check whether their department is present in this table or not.. 


-- with department_above_50 as (
--     select department 
--     from company 
--     group by department 
--     having avg(salary) > 50000
-- )

-- select employee 
-- from company 
-- where department in (
--     select department from department_above_50;
-- )

-- 2nd METHOD : 
    --


-- -- UNION EXAMPLE : IT JOINS MULTIPLE QUERIES AND RETURNS THE UNIQUE ROWS AMONG ALL OF THEM. 

-- select name from hr union select name from Finance;

-- -- UNION ALL : IT JUST JOINS ALL THE ROWS AND DOES NOT REMVOE THE  DUPLICATES.. 

-- select name from hr union all select name from Finance;


-- -- INTERSECTION : RETURNS THE COMMON ROWS FROM BOTH THE SETS..

-- select name from hr intersection select name from Finance;


-- -- EXCEPT : RETURNS THE ROWS THAT ARE PRESENT ONLY IN THE FIRST RES SET AND NOT IN THE SECOND ONE.. IF A ROW IS PRESENT IN BOTH OF THEM 
-- -- THEN IT WILL ALSO BE EXCLUDED FROM THE FINAL RES SET..

-- select name from hr except select name from Finance;


-- -- Table: Employees
-- -- Column Name	Data Type	Description
-- -- employee_id	INT	The unique ID of the employee
-- -- name	VARCHAR	The name of the employee
-- -- department	VARCHAR	The department where the employee works (e.g., 'HR')
-- -- salary	INT	The employee's salary
-- -- hire_date	DATE	The date the employee was hired
-- -- manager_id	INT	The ID of the employee's manager
-- -- project_id	INT	The ID of the project assigned to the employee

-- -- FOR THIS TABLE THESE ARE THE QUERIES : 

-- -- Find the number of employees hired each year.

-- select Year(hire_date)as Hire_Year , count(*) as employee_count from Employees group by Year(Hire_Year);

-- -- Find departments that have more than 10 employees.

-- select department from Employees group by department having count(employee_id) > 10;

-- -- Find the manager who manages the highest number of employees.

-- select manager_id , count(employee_id) as employee_count from Employees group by manager_id order by employee_count desc limit 1;