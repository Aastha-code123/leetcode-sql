-- 181. Employees Earning More Than Their Managers

-- Write a solution to find the employees who earn more than their managers.

CREATE TABLE Employee (
    id INT,
    name VARCHAR(50),
    salary INT,
    managerId INT
);

INSERT INTO Employee VALUES
(1, 'Joe', 70000, 3),
(2, 'Henry', 80000, 4),
(3, 'Sam', 60000, NULL),
(4, 'Max', 90000, NULL);

SELECT 
    e1.name AS employee
FROM
    Employee e1
LEFT JOIN
    Employee e2 ON e1.managerId = e2.id
WHERE
    e1.salary > e2.salary;