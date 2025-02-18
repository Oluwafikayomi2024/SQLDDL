CREATE TABLE Employee (
	num_e INT PRIMARY KEY,
	name VARCHAR(255),
	position VARCHAR(255),
	salary DECIMAL(10,2),
	num_s INT,
FOREIGN KEY (num_s) REFERENCES Department (num_s)
);

CREATE TABLE Department (
	num_s INT PRIMARY KEY,
	label VARCHAR (255),
	manager_name VARCHAR (255)
);

CREATE TABLE Project (
	num_p INT PRIMARY KEY,
	title VARCHAR (255),
	start_date DATE,
	end_date DATE,
	num_s INT,
FOREIGN KEY (num_s) REFERENCES Department (num_s)
);

CREATE TABLE Employee_Project (
	num_e INT,
	num_p INT,
	role VARCHAR (255),
	
FOREIGN KEY(num_e) REFERENCES Employee(num_e) ON DELETE CASCADE,
FOREIGN KEY(num_p) REFERENCES Project(num_p ) ON DELETE CASCADE
);

INSERT INTO Department
VALUES (1, 'IT', 'Alice Johnson' ),
	(2, 'HR', 'Bob Smith' ),
	(3, 'Marketing', 'Clara Bennett' )
;

INSERT INTO Employee
VALUES (101, 'John Doe', 'Developer', 60000.00, 1),
	(102, 'Jane Smith', 'Analyst', 55000.00, 2),
	(103, 'Mike Brown', 'Designer', 50000.00, 3),
	(104, 'Sarah Johnson', 'Data Scientist', 70000.00, 1),
	(105, 'Emma Wilson', 'HR Specialist', 52000.00, 2)
;

INSERT INTO Project
VALUES (201, 'Website Redesign', '2024-01-15', '2024-06-30',1),
	(202, 'Employee Onboarding', '2024-03-01', '2024-09-01',2),
	(203, 'Market Research', '2024-02-01', '2024-07-31',3),
	(204, 'IT Infrastructure Setup', '2024-04-01', '2024-12-31',1)
;

INSERT INTO Employee_Project
VALUES (101, 201, 'Frontend Developer'),
	(104, 201, 'Backend Developer'),
	(102, 202, 'Trainer'),
	(105, 202, 'Coordinator'),
	(103, 203, 'Research Lead'),
	(101, 204, 'Network Specialist')
;

SELECT * FROM Employee

UPDATE Employee_Project
SET role = 'Full Stack Developer'
WHERE num_e = 101

SELECT * FROM Employee_Project

DELETE FROM Employee
WHERE num_e = 103

