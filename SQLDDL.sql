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
FOREIGN KEY (num_e) REFERENCES Employee (num_e),
	num_p INT,
FOREIGN KEY (num_p) REFERENCES Project (num_p),
	role VARCHAR (255)
);