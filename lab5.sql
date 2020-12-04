USE lab;

CREATE TABLE Class (
    id INT PRIMARY KEY,
    std_name VARCHAR(50)
);

START TRANSACTION; /* BEGAN the TRANSACTION here */

SET autocommit=0;

INSERT INTO Class VALUES (01, "Max");
INSERT INTO Class VALUES (02, "Sam");
INSERT INTO Class VALUES (03, "Carl");
INSERT INTO Class VALUES (04, "Tom");

COMMIT; /* COMMITED the TRANSACTION HERE */

SAVEPOINT A; /* Created a SAVEPOINT named A here */

INSERT INTO Class VALUES (05, "Jim");

INSERT INTO Class VALUES (06, "Kevin");

SELECT * FROM Class;

ROLLBACK;/* ROLLEDBACK to SAVEPOINT B */

SELECT * FROM Class;

ROLLBACK TO A; /* ROLLEDBACK to SAVEPOINT A */

SELECT * FROM Class;