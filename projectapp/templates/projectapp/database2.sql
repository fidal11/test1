CREATE TABLE departments (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  location VARCHAR(50) NOT NULL
);
CREATE TABLE employees (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  department_id INTEGER NOT NULL,
  salary NUMERIC(10, 2) NOT NULL,
  FOREIGN KEY (department_id) REFERENCES departments(id)
);
INSERT INTO departments (name, location) VALUES
  ('Sales', 'New York'),
  ('Marketing', 'Los Angeles'),
  ('Engineering', 'San Francisco'),
  ('Finance', 'Chicago');

  INSERT INTO employees (name, department_id, salary) VALUES
  ('Alice', 1, 50000.00),
  ('Bob', 1, 55000.00),
  ('Charlie', 2, 45000.00),
  ('David', 2, 60000.00),
  ('Eve', 3, 70000.00),
  ('Frank', 3, 65000.00),
  ('Grace', 4, 40000.00),
  ('Henry', 4, 45000.00),
  ('Isaac', 4, 55000.00),
  ('Jack', 4, 50000.00);

-- 1.Retrieve the names of all the employees who have salaries greater than the average salary of their department.


-- 2.selects the names of all employees who work in the department with a location of "San Francisco"


-- 3.selects the names and salaries of all employees who work in the Marketing department and whose salary is greater than the average salary of all employees in the Marketing department