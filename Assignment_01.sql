CREATE TABLE students (
    id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(20),
    date_of_birth DATE,
    address VARCHAR(100),
    city VARCHAR(50),
    state VARCHAR(50),
    postal_code VARCHAR(20),
    country VARCHAR(50)
);

INSERT INTO students (id, first_name, last_name, email, phone, date_of_birth, address, city, state, postal_code, country)
VALUES
    (1, 'John', 'Doe', 'john.doe@example.com', '+1-555-555-1234', '2000-01-01', '123 Main St', 'Anytown', 'CA', '12345', 'USA'),
    (2, 'Jane', 'Smith', 'jane.smith@example.com', '+1-555-555-5678', '2001-02-02', '456 Maple St', 'Othertown', 'NY', '67890', 'USA'),
    (3, 'Bob', 'Johnson', 'bob.johnson@example.com', '+1-555-555-9999', '1999-03-03', '789 Oak St', 'Somewhere', 'TX', '13579', 'USA'),
    (4, 'Mary', 'Williams', 'mary.williams@example.com', '+1-555-555-2468', '2002-04-04', '321 Elm St', 'Anytown', 'CA', '12345', 'USA'),
    (5, 'David', 'Jones', 'david.jones@example.com', '+1-555-555-3690', '2003-05-05', '654 Pine St', 'Othertown', 'NY', '67890', 'USA'),
    (6, 'Samantha', 'Lee', 'samantha.lee@example.com', '+1-555-555-8024', '2004-06-06', '987 Birch St', 'Somewhere', 'TX', '13579', 'USA'),
    (7, 'Daniel', 'Brown', 'daniel.brown@example.com', '+1-555-555-1357', '2005-07-07', '246 Oak Ave', 'Anytown', 'CA', '12345', 'USA'),
    (8, 'Amy', 'Taylor', 'amy.taylor@example.com', '+1-555-555-4680', '2006-08-08', '369 Pine Ave', 'Othertown', 'NY', '67890', 'USA'),
    (9, 'Andrew', 'Davis', 'andrew.davis@example.com', '+1-555-555-7913', '2007-09-09', '802 Birch Ave', 'Somewhere', 'TX', '13579', 'USA'),
    (10, 'Emily', 'Miller', 'emily.miller@example.com', '+1-555-555-1234', '2008-10-10', '135 Elm Ave', 'Anytown', 'CA', '12345', 'USA');

CREATE TABLE courses (
  id INT PRIMARY KEY,
  course_name VARCHAR(255) NOT NULL,
  course_code VARCHAR(10) NOT NULL,
  credit_hours INT NOT NULL,
  instructor_name VARCHAR(255),
  department VARCHAR(50)
);

INSERT INTO courses (id, course_name, course_code, credit_hours, instructor_name, department)
VALUES
    (1, 'Introduction to Programming', 'CSE101', 3, 'John Smith', 'Computer Science'),
    (2, 'Data Structures and Algorithms', 'CSE201', 3, 'Jane Doe', 'Computer Science'),
    (3, 'Database Management Systems', 'CSE301', 3, 'Bob Johnson', 'Computer Science'),
    (4, 'Operating Systems', 'CSE401', 3, 'Mary Williams', 'Computer Science'),
    (5, 'Web Development', 'CSE501', 3, 'David Jones', 'Computer Science'),
    (6, 'Linear Algebra', 'MATH101', 3, 'Samantha Lee', 'Mathematics'),
    (7, 'Calculus', 'MATH201', 4, 'Daniel Brown', 'Mathematics'),
    (8, 'Statistics', 'MATH301', 3, 'Amy Taylor', 'Mathematics'),
    (9, 'Differential Equations', 'MATH401', 3, 'Andrew Davis', 'Mathematics'),
    (10, 'Abstract Algebra', 'MATH501', 3, 'Emily Miller', 'Mathematics');
    
CREATE TABLE student_enrollment (
  id INT PRIMARY KEY,
  student_id INT NOT NULL,
  course_id INT NOT NULL,
  enrollment_date DATE NOT NULL,
  FOREIGN KEY (student_id) REFERENCES students(id),
  FOREIGN KEY (course_id) REFERENCES courses(id)
);

INSERT INTO student_enrollment (id, student_id, course_id, enrollment_date)
VALUES
    (1, 101, 1, '2022-01-15'),
    (2, 101, 2, '2022-01-15'),
    (3, 102, 3, '2022-01-16'),
    (4, 103, 4, '2022-01-16'),
    (5, 104, 5, '2022-01-17'),
    (6, 105, 6, '2022-01-18'),
    (7, 106, 7, '2022-01-18'),
    (8, 107, 8, '2022-01-19'),
    (9, 108, 9, '2022-01-19'),
    (10, 109, 10, '2022-01-20');

CREATE TABLE professors (
  id INT PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  email VARCHAR(100) NOT NULL UNIQUE,
  phone_number VARCHAR(20),
  department VARCHAR(50) NOT NULL,
  salary INT,
  hire_date DATE
);

INSERT INTO professors (id, first_name, last_name, email, phone_number, department, salary, hire_date)
VALUES
    (1, 'John', 'Doe', 'johndoe@example.com', '555-1234', 'Computer Science', 60000, '2020-01-15'),
    (2, 'Jane', 'Doe', 'janedoe@example.com', '555-5678', 'Mathematics', 70000, '2019-02-22'),
    (3, 'Bob', 'Smith', 'bobsmith@example.com', '555-9012', 'Business', 80000, '2018-03-25'),
    (4, 'Alice', 'Johnson', 'alicejohnson@example.com', '555-3456', 'Computer Science', 90000, '2017-04-30'),
    (5, 'Mark', 'Williams', 'markwilliams@example.com', '555-7890', 'Psychology', 100000, '2016-05-28'),
    (6, 'Karen', 'Brown', 'karenbrown@example.com', '555-2345', 'Marketing', 110000, '2015-06-19'),
    (7, 'David', 'Davis', 'daviddavis@example.com', '555-6789', 'Computer Science', 120000, '2014-07-12'),
    (8, 'Sarah', 'Jones', 'sarahjones@example.com', '555-0123', 'Mathematics', 130000, '2013-08-03'),
    (9, 'Mike', 'Miller', 'mikemiller@example.com', '555-4567', 'Psychology', 140000, '2012-09-08'),
    (10, 'Emily', 'Lee', 'emilylee@example.com', '555-8901', 'Marketing', 150000, '2011-10-11');


CREATE TABLE teach (
  id INT PRIMARY KEY,
  course_id INT NOT NULL,
  professor_last_name VARCHAR(50) NOT NULL,
  semester VARCHAR(20) NOT NULL,
  year INT NOT NULL,
  FOREIGN KEY (course_id) REFERENCES courses(id),
  FOREIGN KEY (professor_last_name) REFERENCES professors(last_name)
);


INSERT INTO teach (id, course_id, professor_last_name, semester, year)
VALUES
    (1, 1, 'Doe', 'Fall', 2020),
    (2, 2, 'Smith', 'Spring', 2019),
    (3, 3, 'Johnson', 'Summer', 2018),
    (4, 4, 'Williams', 'Fall', 2017),
    (5, 5, 'Brown', 'Spring', 2016),
    (6, 6, 'Davis', 'Summer', 2015),
    (7, 7, 'Jones', 'Fall', 2014),
    (8, 8, 'Miller', 'Spring', 2013),
    (9, 9, 'Lee', 'Summer', 2012),
    (10, 10, 'Doe', 'Fall', 2011);
