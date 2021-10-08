use employees;

select * from employees;



# # EXAMPLE
# SELECT birth_date, CONCAT(first_name, ' ', last_name)
# FROM employees
# WHERE emp_no IN (
#     SELECT emp_no FROM dept_manager
# );

# 1.
select * from employees
where  hire_date in (
    select hire_date from employees
    where emp_no = 101010
    );


# 2.
select distinct title from titles
where  emp_no in (
    select emp_no from employees
    where first_name = 'Aamod'
);




# 3.
SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM titles
    WHERE title = 'Manager'
      AND to_date > NOW()
) AND gender = 'F';


