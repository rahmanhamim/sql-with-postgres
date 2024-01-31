-- Active: 1692158769276@@127.0.0.1@5432@university_management@public
-- ## CREATE DATABASE
-- CREATE DATABASE DB1;

-- ## RENAME DATABASE
-- ALTER DATABASE DB1 RENAME TO DB2;

-- ## DELETE DATABASE
-- DROP DATABASE DB2;

-- ## CREATE A STUDENT TABLE
-- CREATE TABLE student (
--     student_id INT, first_name VARCHAR(50), last_name VARCHAR(50), cgpa NUMERIC(1, 2)
-- )

-- ## UPDATE A TABLE NAME
-- ALTER TABLE student RENAME TO learners;

-- ## DELETE A TABLE
-- DROP TABLE learners;

-- ## CREATE A TABLE WITH CONSTRAINTS
-- CREATE TABLE "user" (
--     user_id SERIAL PRIMARY KEY,
--     username VARCHAR(255) UNIQUE NOT NULL,
--     email VARCHAR(255) UNIQUE NOT NULL
-- -- )
-- CREATE TABLE "user1" (
--     user_id SERIAL PRIMARY KEY,
--     username VARCHAR(255) UNIQUE NOT NULL,
--     email VARCHAR(255) UNIQUE NOT NULL,
--     age INT DEFAULT 18
-- )

-- INSERT INTO "user1" VALUES (1, 'user1', 'abc@gmail.com')

-- -- SELECT username FROM "user1"
-- SELECT * FROM "user1"

-- INSERT INTO "user1" (user_id, username, email, age) VALUES(3, 'Hamim', 'hamim@ph.com', 29);

-- ## Delete all rows in a table without deleting the table
-- TRUNCATE TABLE "user1";

-- INSERT INTO "user1" (username, email, age)
-- VALUES
-- ('Hamim', 'rahmnahhamim@gmail.com', 29),
-- ('Muktadir', 'muktadir@gmail.com', 20);

-- ## ALTER TABLE
-- add a table column, drop a column, change datatype of a COLUMN
-- rename a column, set DEFAULT value for a column
-- add a constraint to a column, drop constraint for a COLUMN
-- table rename - DONE
-- ALTER TABLE table_name action

-- ADD A COLUMN
ALTER TABLE user1
ADD COLUMN password VARCHAR(255) DEFAULT 'admin123' NOT NULL;

ALTER table user1
add column demo int
-- DELETE A COLUMN
ALTER TABLE user1
DROP COLUMN age;

-- CHANGE DATATYPE OF A COLUMN
ALTER TABLE user1 ALTER COLUMN demo TYPE text;

-- SET DEFAULT VALUE FOR A COLUMN
ALTER TABLE user1 ALTER COLUMN demo SET DEFAULT 'BANGLADESH';

INSERT INTO user1 values (6, 'tesa', 'tesa@mail.com');

-- REMOVE DEFAULT VALUE FOR A COLUMN
ALTER TABLE user1 alter COLUMN demo drop DEFAULT;

-- RENAME A COLUMN
ALTER TABLE user1 RENAME COLUMN demo TO country;

-- ADD and REMOVE CONSTRAINT TO A COLUMN
-- ALTER TABLE user1
-- ALTER COLUMN country SET NOT NULL;

-- ALTER TABLE user1
-- ALTER COLUMN country DROP NOT NULL;

-- ALTER TABLE user1
-- ADD CONSTRAINT unique_email UNIQUE (email);

-- DELETE A CONSTRAINT
-- ALTER TABLE user1 DROP CONSTRAINT unique_email;

-- Department Table
-- Each department has many employees
create table Department (
    deptID SERIAL PRIMARY KEY, deptName VARCHAR(50) NOT NULL
);

insert into Department VALUES (1, 'IT');

-- Employee Table
-- Each employee belong to a department
create table Employee (
    empID SERIAL PRIMARY KEY, empName VARCHAR(50) NOT NULL, departmentID INT, CONSTRAINT fk_constraint_dept FOREIGN KEY (departmentID) REFERENCES Department (deptID)
);

insert into Employee VALUES (1, 'Hamim', 1);

DELETE FROM Department WHERE deptID = 1;
-- it will not work because of the foreign key constraint we need to delete the employee first.
DELETE FROM Employee WHERE empID = 1;

-- ------------------------------------------------------------------------

create table courses (
    course_id SERIAL PRIMARY KEY, course_name VARCHAR(255) NOT NULL, description VARCHAR(255), published_date DATE
)

INSERT INTO
    courses (
        course_name, description, published_date
    )
VALUES (
        'MongoDB', 'MongoDB for beginners', '2021-01-01'
    ),
    (
        'NodeJS', 'NodeJS for beginners', '2021-01-01'
    ),
    (
        'SQL', 'SQL for beginners', '2021-01-01'
    );

-- Update database table row
-- Update table_name
-- SET
-- column1 = value1,
-- column2 = value2,
-- WHERE condition;

update courses
set
    course_name = 'Test course',
    description = 'test course description'
where
    course_id > 4;

update courses
set
    course_name = 'Test course',
    description = 'test course description'
where
    course_id > 1
    OR course_id < 5;

-- Delete database table row
DELETE FROM courses WHERE course_id = 1;

SELECT * FROM courses;