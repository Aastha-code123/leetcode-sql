-- 1965. Employees With Missing Information

-- Write a solution to report the IDs of all the employees with missing information. The information of an employee is missing if:

-- The employee's name is missing, or
-- The employee's salary is missing.
-- Return the result table ordered by employee_id in ascending order.


CREATE TABLE Emplooyees (
    employee_id INT,
    name VARCHAR(50)
);
CREATE TABLE Salaries (
    employee_id INT,
    salary INT
);

insert  into Emplooyees values
(2,'Crew'),
(4,'Haven'),
(5,'Kristian');

insert into Salaries values
(5,76071),
(1,22517),
(4,63539);

SELECT 
    e.employee_id
FROM
    Emplooyees e
LEFT JOIN
    Salaries s ON e.employee_id = s.employee_id
WHERE
    s.salary IS NULL
    
    
UNION


 SELECT 
    s.employee_id
FROM
    Salaries s
LEFT JOIN
    Emplooyees e ON e.employee_id = s.employee_id
WHERE
    e.name IS NULL
ORDER BY employee_id asc;





