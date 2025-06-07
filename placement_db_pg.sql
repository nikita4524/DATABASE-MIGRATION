-- PostgreSQL version of your database schema and sample data

-- CREATE TABLES

CREATE TABLE Students (
    StudentID SERIAL PRIMARY KEY,
    Name VARCHAR(100),
    Age INT,
    Major VARCHAR(50)
);

CREATE TABLE Companies (
    CompanyID SERIAL PRIMARY KEY,
    Name VARCHAR(100),
    Industry VARCHAR(50)
);

CREATE TABLE Job_Postings (
    JobID SERIAL PRIMARY KEY,
    CompanyID INT,
    JobTitle VARCHAR(100),
    FOREIGN KEY (CompanyID) REFERENCES Companies(CompanyID)
);

CREATE TABLE Applications (
    ApplicationID SERIAL PRIMARY KEY,
    StudentID INT,
    JobID INT,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (JobID) REFERENCES Job_Postings(JobID)
);

-- INSERT SAMPLE DATA

INSERT INTO Students (Name, Age, Major) VALUES
('Alice', 20, 'Computer Science'),
('Bob', 21, 'IT'),
('Charlie', 22, 'ECE');

INSERT INTO Companies (Name, Industry) VALUES
('Google', 'Technology'),
('Amazon', 'E-Commerce');

INSERT INTO Job_Postings (CompanyID, JobTitle) VALUES
(1, 'Software Engineer'),
(2, 'Data Analyst');

INSERT INTO Applications (StudentID, JobID) VALUES
(1, 1),
(2, 1),
(3, 2);
