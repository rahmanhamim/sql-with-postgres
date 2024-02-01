-- Active: 1692158769276@@127.0.0.1@5432@university_management@public

create TABLE IF NOT EXISTS departments (
    deptID SERIAL PRIMARY KEY, name text NOT NULL
)

INSERT INTO
    departments (name)
VALUES ('IT'),
    ('HR'),
    ('Marketing'),
    ('Finance'),
    ('Sales');

CREATE TABLE IF NOT EXISTS employees (
    empID SERIAL PRIMARY KEY, name text NOT NULL, email text not null, salary INTEGER NOT NULL DEFAULT 0, joining_date date not null, deptID INTEGER NOT NULL, CONSTRAINT fk_deptID FOREIGN KEY (deptID) REFERENCES departments (deptID)
)

INSERT INTO
    employees (
        name, email, salary, joining_date, deptID
    )
VALUES (
        'John Smith', 'john.smith@example.com', 55000, '2022-02-15', 1
    ),
    (
        'Jane Doe', 'jane.doe@example.com', 60000, '2022-03-01', 2
    ),
    (
        'Michael Johnson', 'michael.johnson@example.com', 62000, '2022-04-05', 3
    ),
    (
        'Emily Brown', 'emily.brown@example.com', 58000, '2022-05-10', 4
    ),
    (
        'William Taylor', 'william.taylor@example.com', 59000, '2022-06-15', 1
    ),
    (
        'Emma Wilson', 'emma.wilson@example.com', 63000, '2022-07-20', 2
    ),
    (
        'James Anderson', 'james.anderson@example.com', 65000, '2022-08-25', 3
    ),
    (
        'Olivia Martinez', 'olivia.martinez@example.com', 70000, '2022-09-30', 4
    ),
    (
        'Alexander Jackson', 'alexander.jackson@example.com', 72000, '2022-10-05', 1
    ),
    (
        'Sophia White', 'sophia.white@example.com', 68000, '2022-11-10', 2
    ),
    (
        'Matthew Harris', 'matthew.harris@example.com', 75000, '2022-12-15', 3
    ),
    (
        'Ava Garcia', 'ava.garcia@example.com', 78000, '2023-01-20', 4
    ),
    (
        'Daniel Martinez', 'daniel.martinez@example.com', 80000, '2023-02-25', 1
    ),
    (
        'Isabella Johnson', 'isabella.johnson@example.com', 82000, '2023-03-30', 2
    ),
    (
        'David Brown', 'david.brown@example.com', 85000, '2023-04-05', 3
    ),
    (
        'Mia Wilson', 'mia.wilson@example.com', 87000, '2023-05-10', 4
    ),
    (
        'Michael Miller', 'michael.miller@example.com', 90000, '2023-06-15', 1
    ),
    (
        'Ethan Thompson', 'ethan.thompson@example.com', 92000, '2023-07-20', 2
    ),
    (
        'Emma Thomas', 'emma.thomas@example.com', 95000, '2023-08-25', 3
    ),
    (
        'Liam Lee', 'liam.lee@example.com', 97000, '2023-09-30', 4
    );

-- SELECT * FROM employees;
SELECT * FROM employees ORDER BY empid ASC;

SELECT * FROM employees ORDER BY name DESC LIMIT 2 OFFSET 1;