USE lab;

CREATE TABLE  Employee ( code VARCHAR(4) PRIMARY KEY,
	name VARCHAR(10),
	designation VARCHAR(30),
	dob DATE,
	salary INT);

INSERT INTO Employee VALUES('e1','Tom','Software Engineer','1992-10-20',20000);
INSERT INTO Employee VALUES('e2','Lucy','UX Designer','1995-03-12',15000);

SELECT * FROM Employee;

UPDATE Employee SET salary=25000 WHERE code='e1';

SELECT * FROM Employee;

DELETE FROM Employee WHERE code='e2';

SELECT * FROM Employee;
