Create database CarrerHub
go
Use CarrerHub
go
CREATE TABLE Company (
    CompanyID INT PRIMARY KEY,
    CompanyName VARCHAR(255),
    Location VARCHAR(255)
);

CREATE TABLE JobListing (
    JobID INT PRIMARY KEY,
    CompanyID INT,
    JobTitle VARCHAR(255),
    JobDescription TEXT,
    JobLocation VARCHAR(255),
    Salary DECIMAL(10, 2),
    JobType VARCHAR(50),
    PostedDate DATETIME,
    FOREIGN KEY (CompanyID) REFERENCES Company(CompanyID)
);
CREATE TABLE Applicant (
    ApplicantID INT PRIMARY KEY IDENTITY(1,1) ,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    Email VARCHAR(255) UNIQUE,
    Phone VARCHAR(20),
    Resume VARCHAR(255)
);
drop table JobApplication
CREATE TABLE JobApplication (
    ApplicationID INT PRIMARY KEY IDENTITY(1,1),
    JobID INT,
    ApplicantID INT,
    ApplicationDate DATETIME,
    CoverLetter TEXT,
    FOREIGN KEY (JobID) REFERENCES JobListing(JobID),
    FOREIGN KEY (ApplicantID) REFERENCES Applicant(ApplicantID)
);

-- Inserting data into the Company table
INSERT INTO Company (CompanyID, CompanyName, Location) VALUES
(1, 'Tech Innovations Pvt. Ltd.', 'Bangalore, Karnataka'),
(2, 'Green Solutions Pvt. Ltd.', 'Mumbai, Maharashtra'),
(3, 'HealthCare Systems India', 'Delhi'),
(4, 'FinanceCorp India', 'Chennai, Tamil Nadu'),
(5, 'EduTech Partners', 'Hyderabad, Telangana');

-- Inserting data into the Applicant table
INSERT INTO Applicant (ApplicantID, FirstName, LastName, Email, Phone, Resume) VALUES
(1, 'Aarav', 'Sharma', 'aarav.sharma@example.com', '9876543210', 'aarav_resume.pdf'),
(2, 'Isha', 'Patel', 'isha.patel@example.com', '9123456780', 'isha_resume.pdf'),
(3, 'Rohan', 'Verma', 'rohan.verma@example.com', '9988776655', 'rohan_resume.pdf'),
(4, 'Neha', 'Singh', 'neha.singh@example.com', '9871234560', 'neha_resume.pdf'),
(5, 'Raj', 'Kumar', 'raj.kumar@example.com', '8765432109', 'raj_resume.pdf');

-- Inserting data into the JobListing table
INSERT INTO JobListing (JobID, CompanyID, JobTitle, JobDescription, JobLocation, Salary, JobType, PostedDate) VALUES
(1, 1, 'Software Engineer', 'Develop and maintain software applications.', 'Bangalore, Karnataka', 120000.00, 'Full-time', '2024-10-01'),
(2, 2, 'Environmental Scientist', 'Conduct research on environmental issues.', 'Mumbai, Maharashtra', 80000.00, 'Full-time', '2024-10-02'),
(3, 3, 'Nurse Practitioner', 'Provide patient care in a clinical setting.', 'Delhi', 90000.00, 'Part-time', '2024-10-03'),
(4, 4, 'Financial Analyst', 'Analyze financial data and trends.', 'Chennai, Tamil Nadu', 100000.00, 'Full-time', '2024-10-04'),
(5, 5, 'Educational Consultant', 'Advise schools on curriculum development.', 'Hyderabad, Telangana', 95000.00, 'Contract', '2024-10-05');

-- Inserting data into the JobApplication table
INSERT INTO JobApplication (JobID, ApplicantID, ApplicationDate, CoverLetter) VALUES
(1, 1, '2024-10-06', 'I am very excited about this opportunity.'),
(2, 2, '2024-10-07', 'I believe my skills are a great match for this position.'),
(3, 3, '2024-10-08', 'I have the relevant experience and passion for this role.'),
(4, 4, '2024-10-09', 'I am eager to contribute to your team.'),
(5, 5, '2024-10-10', 'I would love to help your company grow.');


select * from Company
select * from Applicant
select * from JobListing
select * from JobApplication

