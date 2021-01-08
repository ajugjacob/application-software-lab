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

\! echo "Descending Order of Name";
SELECT Code, NameEmployee, Designation FROM Employee ORDER BY NameEmployee DESC;

CREATE TABLE Deposit (
    Baccno INT,
    Branch_Name VARCHAR(50),
    Amount FLOAT
);

INSERT INTO Deposit VALUES(9001, 'Delhi', 1200000.00);
INSERT INTO Deposit VALUES(9004, 'Kochi', 91000.00);
INSERT INTO Deposit VALUES(9002, 'Delhi', 520000.00);
INSERT INTO Deposit VALUES(9005, 'Kochi', 1020000.00);
INSERT INTO Deposit VALUES(9007, 'Kolkata', 400000.00);
INSERT INTO Deposit VALUES(9003, 'Delhi', 994000.00);
INSERT INTO Deposit VALUES(9006, 'Kochi', 810000.00);
INSERT INTO Deposit VALUES(9008, 'Kolkata', 380000.00);

\! echo "Grouping by Branch Name";
SELECT Branch_Name, COUNT(Baccno), SUM(Amount) FROM Deposit GROUP BY Branch_Name;
