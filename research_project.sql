create database research_project;

 use research_project;
 
 
 create table employee(
 ssn int not null primary key,
 emp_name varchar(250),
 salary int 
 );
 
 create table funding_agency(
 a_id int not null primary key,
 agency_name varchar(250),
 address varchar(100)
 );
 
 create table project(
 id int not null primary key,
 project_name varchar(250),
 manager_id int ,
 budget int,
 duration int,
 agency_id int ,
 unique(id,agency_id),
 foreign key(manager_id) references employee(ssn),
 foreign key(agency_id) references funding_agency(a_id)
 
 ); 
 
 create table Employe_project (id int not null primary key,
 employee_id int,
 project_id int,
 foreign key (employee_id)references employee(ssn),
 foreign key (project_id) references project(id)); 
 
 
 INSERT INTO employee (ssn, emp_name, salary) VALUES
(101, 'Alice Johnson', 70000),
(102, 'Bob Smith', 75000),
(103, 'Charlie Lee', 72000),
(104, 'Diana King', 68000),
(105, 'Ethan Wright', 80000),
(106, 'Fiona Adams', 71000),
(107, 'George Brown', 69000); 


INSERT INTO funding_agency (a_id, agency_name, address) VALUES
(1, 'National Science Foundation', '123 Innovation St'),
(2, 'Health Research Board', '456 Wellness Ave'),
(3, 'Technology Fund', '789 Tech Park'),
(4, 'Green Energy Initiative', '321 Eco Blvd'),
(5, 'Space Research Org', '654 Orbit Way'),
(6, 'Agricultural Dev Org', '987 Farm Lane'),
(7, 'Education Research Fund', '246 Learning Dr'); 


INSERT INTO project (id, project_name, manager_id, budget, duration, agency_id) VALUES
(201, 'AI for Healthcare', 101, 500000, 24, 1),
(202, 'Clean Energy Initiative', 102, 300000, 18, 4),
(203, 'Space Debris Monitoring', 103, 750000, 36, 5),
(204, 'Agritech Revolution', 104, 200000, 12, 6),
(205, 'Smart Education Tools', 105, 250000, 20, 7),
(206, 'Biotech Advancement', 106, 400000, 30, 2),
(207, 'Cybersecurity Framework', 107, 600000, 28, 3); 

INSERT INTO Employe_project (id, employee_id, project_id) VALUES
(1, 101, 201),
(2, 102, 202),
(3, 103, 203),
(4, 104, 204),
(5, 105, 205),
(6, 106, 206),
(7, 107, 207);