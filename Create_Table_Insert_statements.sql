CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50),
    department_description VARCHAR(200),
    department_manager VARCHAR(100),
    department_location VARCHAR(100),
    division VARCHAR(50)
);

INSERT INTO Departments (department_id, department_name, department_description, department_manager, department_location, division)
VALUES 
    (1, 'Electronics', 'Department for all kinds of electronic gadgets', 'John Doe', 'First Floor, South Wing', 'Technology'),
    (2, 'Fashion', 'Department for clothing and accessories', 'Jane Smith', 'Second Floor, West Wing', 'Apparel'),
    (3, 'Home Decor', 'Department for home decor and furniture', 'Bob Johnson', 'Third Floor, East Wing', 'Household'),
    (4, 'Sports', 'Department for sporting goods and equipment', 'Michael Jordan', 'Fourth Floor, North Wing', 'Fitness'),
    (5, 'Beauty', 'Department for cosmetics and personal care', 'Marilyn Monroe', 'Second Floor, East Wing', 'Personal Care'),
    (6, 'Toys', 'Department for toys and games', 'Barbie', 'First Floor, North Wing', 'Toys'),
    (7, 'Jewelry', 'Department for fine jewelry and watches', 'Elizabeth Taylor', 'Third Floor, West Wing', 'Accessories'),
    (8, 'Books', 'Department for books and stationery', 'William Shakespeare', 'Second Floor, South Wing', 'Books'),
    (9, 'Grocery', 'Department for groceries and household essentials', 'Martha Stewart', 'Basement, West Wing', 'Grocery'),
    (10, 'Pets', 'Department for pet supplies and accessories', 'Cesar Millan', 'Fifth Floor, East Wing', 'Pets'),
    (11, 'Automotive', 'Department for automotive supplies and accessories', 'Henry Ford', 'First Floor, West Wing', 'Automotive'),
    (12, 'Outdoor', 'Department for outdoor gear and supplies', 'Bear Grylls', 'Fourth Floor, South Wing', 'Outdoor'),
    (13, 'Office Supplies', 'Department for office supplies and equipment', 'Steve Jobs', 'Third Floor, North Wing', 'Office Supplies'),
    (14, 'Health', 'Department for health and wellness products', 'Dr. Oz', 'Second Floor, North Wing', 'Personal Care'),
    (15, 'Musical Instruments', 'Department for musical instruments and equipment', 'Beethoven', 'Fifth Floor, West Wing', 'Entertainment'),
    (16, 'Art Supplies', 'Department for art supplies and materials', 'Vincent van Gogh', 'Third Floor, South Wing', 'Art'),
    (17, 'Luggage', 'Department for luggage and travel accessories', 'Amelia Earhart', 'Second Floor, West Wing', 'Accessories'),
    (18, 'Tools', 'Department for tools and hardware', 'Tim Allen', 'Basement, North Wing', 'Hardware'),
    (19, 'Baby', 'Department for baby products and accessories', 'Dr. Spock', 'Fourth Floor, North Wing', 'Baby'),
    (20, 'Home Appliances', 'Department for home appliances and electronics', 'Thomas Edison', 'Fifth Floor, East Wing', 'Technology'),
    (21, 'Crafts', 'Department for crafts and hobby supplies', 'Martha Stewart', 'Third Floor, East Wing', 'Crafts'),
    (22, 'Seasonal', 'Department for seasonal decorations and items', 'Mrs. Claus', 'Fourth Floor, East Wing', 'Seasonal'),
    (23, 'Bakery', 'Department for fresh baked goods and desserts', 'Julia Child', 'First Floor, South Wing', 'Grocery'),
    (24, 'Meat and Seafood', 'Department for fresh meat and seafood', 'Gordon Ramsay', 'Basement, East Wing', 'Grocery'),
    (25, 'Produce', 'Department for fresh fruits and vegetables', 'Jamie Oliver', 'Basement, South Wing', 'Grocery'),
    (26, 'Frozen Foods', 'Department for frozen foods and meals', 'Rachel Ray', 'Second Floor, East Wing', 'Grocery'),
    (27, 'Candy', 'Department for candy and confectionery', 'Willy Wonka', 'First Floor, East Wing', 'Grocery'),
    (28, 'Alcohol', 'Department for wine, beer, and spirits', 'Ernest Hemingway', 'Fifth Floor, North Wing', 'Grocery');
    
    
CREATE TABLE regions (
  region_id INT PRIMARY KEY,
  region_name VARCHAR(50),
  country_id INT,
  description TEXT
);


INSERT INTO regions (region_id, region_name, country_id, description)
VALUES
  (1, 'North America', 1, 'Includes Canada, USA, and Mexico'),
  (2, 'South America', 2, 'Includes Brazil, Argentina, and Peru'),
  (3, 'Europe', 3, 'Includes UK, Germany, and France'),
  (4, 'Asia', 4, 'Includes China, Japan, and India'),
  (5, 'Africa', 5, 'Includes Egypt, South Africa, and Nigeria'),
  (6, 'Oceania', 6, 'Includes Australia and New Zealand'),
  (7, 'Middle East', 7, 'Includes Saudi Arabia and Iran');
  
  
  
CREATE TABLE employees (
  employee_id INT PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  email VARCHAR(100),
  hire_date DATE,
  job_title VARCHAR(50),
  department_id INT,
  salary DECIMAL(10,2),
  manager_id INT,
  region_id INT
);


INSERT INTO employees (employee_id, first_name, last_name, email, hire_date, job_title, department_id, salary, manager_id, region_id)
VALUES
  (1001, 'John', 'Doe', 'johndoe@example.com', '2022-01-01', 'Manager', 1, 100000, NULL, 1),
  (1002, 'Jane', 'Doe', 'janedoe@example.com', '2022-01-02', 'Manager', 2, 90000, NULL, 1),
  (1003, 'Bob', 'Smith', 'bobsmith@example.com', '2022-01-03', 'Sales Associate', 3, 50000, 1001, 1),
  (1004, 'Alice', 'Johnson', 'alicejohnson@example.com', '2022-01-04', 'Sales Associate', 3, 55000, 1001, 1),
  (1005, 'Tom', 'Brown', 'tombrown@example.com', '2022-01-05', 'Sales Associate', 3, 60000, 1001, 1),
  (1006, 'Sara', 'Davis', 'saradavis@example.com', '2022-01-06', 'Accountant', 4, 75000, 1002, 1),
  (1007, 'Adam', 'Smith', 'adamsmith@example.com', '2022-01-07', 'Accountant', 4, 80000, 1002, 1),
  (1008, 'Emily', 'Jones', 'emilyjones@example.com', '2022-01-08', 'Marketing Manager', 5, 110000, 1001, 1),
  (1009, 'David', 'Lee', 'davidlee@example.com', '2022-01-09', 'Marketing Associate', 5, 60000, 1008, 1),
  (1010, 'Karen', 'Wilson', 'karenwilson@example.com', '2022-01-10', 'Marketing Associate', 5, 65000, 1008, 1),
  (1011, 'Mark', 'Davis', 'markdavis@example.com', '2022-01-11', 'IT Manager', 6, 120000, 1002, 2);
