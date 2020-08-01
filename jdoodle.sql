--SQLite code for creating Northwind database
--Created by Debasmita Nandi

--Creation of tables

--Creating Customers table
CREATE TABLE Customers (
customerID INTEGER PRIMARY KEY,
customer_name TEXT NOT NULL,
contact_name TEXT NOT NULL,
address TEXT NOT NULL,
city TEXT NOT NULL,
postal_code TEXT NOT NULL,
country TEXT NOT NULL);

--Creating Categories table
CREATE TABLE Categories (
categoryID INTEGER PRIMARY KEY,
category_name TEXT NOT NULL,
description TEXT);

--Creating Employees table
CREATE TABLE Employees (
employeeID INTEGER PRIMARY KEY,
first_name TEXT,
last_name TEXT NOT NULL,
birthdate TEXT,
notes TEXT);

--Creating Shippers table
CREATE TABLE Shippers (
shipperID INTEGER PRIMARY KEY,
shipper_name TEXT NOT NULL,
phone INTEGER NOT NULL);

--Creating Suppliers table
CREATE TABLE Suppliers (
supplierID INTEGER PRIMARY KEY,
supplier_name TEXT NOT NULL,
contact_name TEXT NOT NULL,
address TEXT NOT NULL,
city TEXT NOT NULL,
postal_code INTEGER NOT NULL,
country TEXT NOT NULL,
phone INTEGER);

PRAGMA foreign_keys = ON;

--Creating Products table
CREATE TABLE Products (
productID INTEGER PRIMARY KEY,
product_name TEXT NOT NULL,
supplierID INTEGER NOT NULL,
categoryID INTEGER NOT NULL,
unit TEXT NOT NULL,
price INTEGER,
FOREIGN KEY (supplierID)
       REFERENCES Suppliers (supplierID),
FOREIGN KEY (categoryID)
       REFERENCES Categories (categoryID));

--Creating Orders table
CREATE TABLE Orders (
orderID INTEGER PRIMARY KEY,
customerID INTEGER NOT NULL,
employeeID INTEGER NOT NULL,
orderdate TEXT,
shipperID INTEGER NOT NULL,
FOREIGN KEY (customerID)
       REFERENCES Customers (customerID),
FOREIGN KEY (employeeID)
       REFERENCES Employees (employeeID),
FOREIGN KEY (shipperID)
       REFERENCES Shippers (shipperID));

--Creating OrderDetails table
CREATE TABLE OrderDetails (
orderdetailsID INTEGER PRIMARY KEY,
orderID INTEGER NOT NULL,
productID INTEGER NOT NULL,
quantity TEXT,
FOREIGN KEY (orderID)
       REFERENCES Orders (orderID),
FOREIGN KEY (productID)
       REFERENCES Products (productID));
       
--INSERTING VALUES
--INSERTING Values in Customer Table
INSERT INTO Customers(customerID, customer_name, contact_name, address, city, postal_code, country) 
VALUES(1,'Alfreds Futterkiste','Maria Anders',	'Obere Str. 57',	'Berlin',	12209	,'Germany');
INSERT INTO Customers(customerID, customer_name, contact_name, address, city, postal_code, country) 
VALUES(2,'Ana Trujillo Emparedados y helados','Ana Trujillo','Avda. de la Constitución','2222,México D.F.',05021,'Mexico');
INSERT INTO Customers(customerID, customer_name, contact_name, address, city, postal_code, country) 
VALUES(3,'Antonio Moreno Taquería','Antonio Moreno','Mataderos','2312,México D.F.',05023,'Mexico');
INSERT INTO Customers(customerID, customer_name, contact_name, address, city, postal_code, country) 
VALUES(4,'Around the Horn','Thomas Hardy','120Hanover Sq.','London','WA1 1DP','UK');
INSERT INTO Customers(customerID, customer_name, contact_name, address, city, postal_code, country) 
VALUES(5,'Berglunds snabbköp','Christina Berglund','Berguvsvägen 8','Luleå',	'S-958 22',	'Sweden');
INSERT INTO Customers(customerID, customer_name, contact_name, address, city, postal_code, country) 
VALUES(6,'Blauer See Delikatessen','Hanna Moos','Forsterstr. 57','Mannheim',68306,'Germany');
INSERT INTO Customers(customerID, customer_name, contact_name, address, city, postal_code, country) 
VALUES(7,'Blondel père et fils','Frédérique Citeaux','24, place Kléber','Strasbourg','67000','France');
INSERT INTO Customers(customerID, customer_name, contact_name, address, city, postal_code, country) 
VALUES(8,'Bólido Comidas preparadas','Martín Sommer','C/ Araquil, 67','Madrid',28023,'Spain');
INSERT INTO Customers(customerID, customer_name, contact_name, address, city, postal_code, country) 
VALUES(9,'Bon app','Laurence Lebihans','12, rue des Bouchers','Marseille',13008,'France');
INSERT INTO Customers(customerID, customer_name, contact_name, address, city, postal_code, country) 
VALUES(10,'Bottom-Dollar Marketse','Elizabeth Lincoln','23,Tsawassen Blvd.','Tsawassen','T2F 8M4','Canada');
INSERT INTO Customers(customerID, customer_name, contact_name, address, city, postal_code, country) 
VALUES(11,'Bs Beverages','Victoria Ashworth','Fauntleroy Circus','London','EC2 5NT','UK');
INSERT INTO Customers(customerID, customer_name, contact_name, address, city, postal_code, country) 
VALUES(12,'Cactus Comidas para llevar','Patricio Simpson','Cerrito 333','Buenos Aires',1010,'Argentina');
INSERT INTO Customers(customerID, customer_name, contact_name, address, city, postal_code, country) 
VALUES(13,'Centro comercial Moctezuma','Francisco Chang','Sierras de Granada', '9993,México D.F.',05022,'Mexico');
INSERT INTO Customers(customerID, customer_name, contact_name, address, city, postal_code, country) 
VALUES(14,'Chop-suey Chinese','Yang Wang','Hauptstr. 29','Bern',3012,'Switzerland');
INSERT INTO Customers(customerID, customer_name, contact_name, address, city, postal_code, country) 
VALUES(15,'Comércio Mineiro','Pedro Afonso','Av. dos Lusíadas, 23','São Paulo','05432-043','Brazil');
INSERT INTO Customers(customerID, customer_name, contact_name, address, city, postal_code, country) 
VALUES(16,'Consolidated Holdings','Elizabeth Brown','Berkeley Gardens 12 Brewery','London','WX1 6LT','UK');
INSERT INTO Customers(customerID, customer_name, contact_name, address, city, postal_code, country) 
VALUES(17,'Drachenblut Delikatessend','Sven Ottlieb','Walserweg 21','Aachen',52066,'Germany');
INSERT INTO Customers(customerID, customer_name, contact_name, address, city, postal_code, country) 
VALUES(18,'Du monde entier','Janine Labrune','67, rue des Cinquante Otages','Nantes',44000,'France');
INSERT INTO Customers(customerID, customer_name, contact_name, address, city, postal_code, country) 
VALUES(19,'Eastern Connection','Ann Devon','35 King George','London','WX3 6FW','UK');
INSERT INTO Customers(customerID, customer_name, contact_name, address, city, postal_code, country) 
VALUES(20,'Ernst Handel','Roland Mendel','Kirchgasse 6','Graz',8010,'Austria');




--INSERTING values in Categories table
INSERT INTO Categories(categoryID, category_name, description)
VALUES(1,'Beverages','Soft drinks, coffees, teas, beers, and ales');
INSERT INTO Categories(categoryID, category_name, description)
VALUES(2,'Condiments','Sweet and savory sauces, relishes, spreads, and seasonings');
INSERT INTO Categories(categoryID, category_name, description)
VALUES(3,'Confections','Desserts, candies, and sweet breads');
INSERT INTO Categories(categoryID, category_name, description)
VALUES(4,'Dairy Products','Cheeses');
INSERT INTO Categories(categoryID, category_name, description)
VALUES(5,'Grains/Cereals','Breads, crackers, pasta, and cereal');
INSERT INTO Categories(categoryID, category_name, description)
VALUES(6,'Meat/Poultry','Prepared meats');
INSERT INTO Categories(categoryID, category_name, description)
VALUES(7,'Produce','Dried fruit and bean curd');
INSERT INTO Categories(categoryID, category_name, description)
VALUES(8,'Seafood','Seaweed and fish');


--INSERTING values in Employees table
INSERT INTO Employees(employeeID,first_name,last_name,birthdate,notes)
VALUES(1,'Davolio','Nancy','1968-12-08','Education includes a BA in psychology from Colorado State University. She also completed (The Art of the Cold Call). Nancy is a member of Toastmasters International.');
INSERT INTO Employees(employeeID,first_name,last_name,birthdate,notes)
VALUES(2,'Fuller','Andrew','1952-02-19','Andrew received his BTS commercial and a Ph.D. in international marketing from the University of Dallas. He is fluent in French and Italian and reads German. He joined the company as a sales representative, was promoted to sales manager and was then named vice president of sales. Andrew is a member of the Sales Management Roundtable, the Seattle Chamber of Commerce, and the Pacific Rim Importers Association.');
INSERT INTO Employees(employeeID,first_name,last_name,birthdate,notes)
VALUES(3,'Leverling','Janet','1963-08-30','Janet has a BS degree in chemistry from Boston College). She has also completed a certificate program in food retailing management. Janet was hired as a sales associate and was promoted to sales representative.');
INSERT INTO Employees(employeeID,first_name,last_name,birthdate,notes)
VALUES(4,'Peacock','Margaret','1958-09-19','Margaret holds a BA in English literature from Concordia College and an MA from the American Institute of Culinary Arts. She was temporarily assigned to the London office before returning to her permanent post in Seattle.');
INSERT INTO Employees(employeeID,first_name,last_name,birthdate,notes)
VALUES(5,'Buchanan','Steven','1955-03-04','Steven Buchanan graduated from St. Andrews University, Scotland, with a BSC degree. Upon joining the company as a sales representative, he spent 6 months in an orientation program at the Seattle office and then returned to his permanent post in London, where he was promoted to sales manager. Mr. Buchanan has completed the courses Successful Telemarketing and International Sales Management. He is fluent in French.');
INSERT INTO Employees(employeeID,first_name,last_name,birthdate,notes)
VALUES(6,'Suyama','Michael','1963-07-02','Michael is a graduate of Sussex University (MA, economics) and the University of California at Los Angeles (MBA, marketing). He has also taken the courses Multi-Cultural Selling and Time Management for the Sales Professional. He is fluent in Japanese and can read and write French, Portuguese, and Spanish.');
INSERT INTO Employees(employeeID,first_name,last_name,birthdate,notes)
VALUES(7,'King','Robert','1960-05-29','Robert King served in the Peace Corps and traveled extensively before completing his degree in English at the University of Michigan and then joining the company. After completing a course entitled Selling in Europe, he was transferred to the London office.');
INSERT INTO Employees(employeeID,first_name,last_name,birthdate,notes)
VALUES(8,'Callahan','Laura','1958-01-09','Laura received a BA in psychology from the University of Washington. She has also completed a course in business French. She reads and writes French.');
INSERT INTO Employees(employeeID,first_name,last_name,birthdate,notes)
VALUES(9,'Dodsworth','Anne','1969-07-02','Anne has a BA degree in English from St. Lawrence College. She is fluent in French and German.');
INSERT INTO Employees(employeeID,first_name,last_name,birthdate,notes)
VALUES(10,'West','Adam','1928-09-19','An old chum.');


--INSERTING values in Shippers table
INSERT INTO Shippers(shipperID,shipper_name,phone) VALUES (1,'Speedy Express','(503) 555-9831');
INSERT INTO Shippers(shipperID,shipper_name,phone) VALUES (2,'United Package','(503) 555-3199');
INSERT INTO Shippers(shipperID,shipper_name,phone) VALUES (3,'Federal Shipping','(503) 555-9931');


--INSERTING values in Suppliers table















