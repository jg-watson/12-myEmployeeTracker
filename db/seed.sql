USE tracker_db;

INSERT INTO departments (name)
VALUES
('Sales'),
('Finanace'),
('IT'),

INSERT INTO role (title, salary, department_id)
VALUES
('Salesman', 80000, 001),
('Accountant', 50000,002),
('Tech Support', 40000, 001);


INSERT INTO employee (first_name, last_name, role_id, manager_id )
VALUES
('John', 'Doe', 3, NULL),
('Jane', 'Smith', 2, NULL),
('Jose', 'Gonzales', 0 NULL),
('Kim', 'Gonzales', 2, 1 );