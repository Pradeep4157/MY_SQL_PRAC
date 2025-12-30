

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
