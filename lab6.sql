USE lab;

CREATE TABLE Store (
    order_no INT PRIMARY KEY,
    code VARCHAR(5),
    item_name VARCHAR(50),
    quantity INT,
    price FLOAT(10,2),
    discount FLOAT,
    mrp FLOAT(10,2)
);

INSERT INTO Store VALUES(001,'A001', 'Soap dish', 5, 45.00, 10.0, 50.00);
INSERT INTO Store VALUES(002,'B001', 'Stainless Pan', 1, 160.00, 20.0, 200.00);
INSERT INTO Store VALUES(003,'A002', 'Shampoo', 2, 270.00, 10.0, 300.00);

/* Initial Content of Store */
SELECT * FROM Store;

CREATE VIEW ITEM AS
SELECT item_name, quantity
FROM Store;

/*Initial Content of View */
SELECT * FROM ITEM;

INSERT INTO Store VALUES(004,'C001', 'Spoon', 10, 71.25, 5.0, 75.00);

/* Content of Store after adding new Value */
SELECT * FROM Store;

/* Content of View ITEM after adding new Value */
SELECT * FROM ITEM;

/* Dropping the View ITEM */
DROP VIEW ITEM;