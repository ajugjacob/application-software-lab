USE lab;

CREATE TABLE Employee (
	empid VARCHAR(4) NOT NULL,
	name VARCHAR(10) NOT NULL,
	designation VARCHAR(30),
	dob DATE,
	salary INT,
	PRIMARY KEY (empid)
);

CREATE TABLE Employeedetails (
	code INT NOT NULL,
	age INT,
	city VARCHAR(30),
	empid VARCHAR(4),
	PRIMARY KEY (code),
	FOREIGN KEY (empid) REFERENCES Employee(empid)
);

INSERT INTO Employee VALUES('e1','Tom','Software Engineer','1992-10-20',20000);
INSERT INTO Employee VALUES('e2','Lucy','UX Designer','1995-03-12',15000);
INSERT INTO Employee VALUES('e3','Carl','Software Engineer','1992-04-26',25000);

INSERT INTO Employeedetails VALUES(001,28,'Delhi','e1');
INSERT INTO Employeedetails VALUES(002,25,'Mumbai','e2');

SELECT * FROM Employee WHERE empid IN (SELECT empid FROM Employeedetails);

SELECT * FROM Employee WHERE empid NOT IN (SELECT empid FROM Employeedetails);