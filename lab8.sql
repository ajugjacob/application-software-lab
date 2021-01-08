USE lab;

CREATE TABLE Employee (
    Code INT PRIMARY KEY,
    NameEmployee VARCHAR(20),
    DOB DATE,
    Designation VARCHAR(50),
    Salary INT
);

INSERT INTO Employee VALUES(001, 'John', '1992-10-5', 'Software Engineer', 50000);
INSERT INTO Employee VALUES(002, 'Jean', '1989-03-11', 'Clerk', 25000);
INSERT INTO Employee VALUES(003, 'Carl', '1992-05-29', 'Designer', 45000);
INSERT INTO Employee VALUES(004, 'Mike', '1986-08-16', 'Clerk', 30000);
INSERT INTO Employee VALUES(005, 'Bethany', '1986-01-25', 'Manager', 80000);

SELECT SUM(Salary) FROM Employee WHERE Designation='Clerk';

SELECT MAX(Salary) FROM Employee;

SELECT AVG(Salary) FROM Employee;

SELECT MIN(Salary) FROM Employee;

SELECT COUNT(Code) FROM Employee;
