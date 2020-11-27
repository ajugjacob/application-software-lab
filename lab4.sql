USE lab;

CREATE TABLE Department (
    Code INT PRIMARY KEY,
    Title VARCHAR(50),
    Dept_Name VARCHAR(20) NOT NULL UNIQUE,
    Dept_id VARCHAR(10),
    Salary INT CHECK (Salary>2000)
);

CREATE TABLE Instructor (
    ID INT DEFAULT 0 PRIMARY KEY,
    Name VARCHAR(20) NOT NULL,
    Code INT,
    FOREIGN KEY (Code) REFERENCES Department(Code)
);

INSERT INTO Department VALUES(001,'Professor','Computer Science','CS001',70000);
INSERT INTO Department VALUES(002,'Assistant Professor','Electronics','EC002',50000);

INSERT INTO Instructor VALUES(75,'Arjun',001);
INSERT INTO Instructor VALUES(62,'Roshan',002);