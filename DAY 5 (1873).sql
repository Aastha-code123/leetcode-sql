
-- 1873 CALCULATE SPECIAL BONUS 

-- Write a solution to calculate the bonus of each employee. The bonus of an employee is 100% of their salary if the ID of the employee is an odd number and the employee's name does not start with the character 'M'. The bonus of an employee is 0 otherwise.

-- Return the result table ordered by employee_id.

CREATE TABLE Employeess (
    employee_id INT,
    name VARCHAR(50),
    salary INT
);
INSERT INTO Employeess VALUES 
(2 , 'meir' , 3000),
(3 , 'michael' , 2800),
(7 , 'addilyn' , 7400),
(8 , 'juan' , 6100),
(9 , 'kannon' , 7700);

SELECT 
    employee_id,
    CASE
        WHEN employee_id % 2 = 0 THEN 0
        WHEN name LIKE 'm%' THEN 0
        ELSE salary
    END AS bonus
FROM
    Employeess
ORDER BY employee_id;

 