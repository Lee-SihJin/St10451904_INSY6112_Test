USE ordering;

CREATE TABLE Customer ( 
customer_id INT AUTO_INCREMENT NOT NULL,
name 		 VARCHAR (250) CHARACTER SET utf8mb4 NOT NULL,
email		 VARCHAR(50) CHARACTER SET utf8mb4 NOT NULL,
PRIMARY KEY (customer_id)
);

CREATE TABLE Orders (
order_id INT AUTO_INCREMENT NOT NULL,
order_num INT NOT NULL,
customer_id INT NOT NULL,
order_date DATE NOT NULL,
PRIMARY KEY (order_id),
FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);


INSERT INTO Customer(name, email)
VALUES ("Debbie Duncan", "dduncan@yahoo.com");
       
INSERT INTO Orders(order_num, customer_id, order_date)
VALUES ("020149", "1", "2025-02-14");
       

SELECT * 
FROM Customer;
SELECT * 
FROM Orders;