create database STUDENT;
use STUDENT;
Create TABLE StudentInfo(
 StudentId int primary key,
 FullName varchar(100),
 Age int,
 Email varchar(100) unique
 );
 use STUDENT;
 Create TABLE Course(
 CourseID int primary key,
 Coursename varchar(50),
 Credits int
 );
 use STUDENT;
 Create table Enrollment(
 EnrollmentID int primary key,
 StudentId int,
 CourseID int,
 EnrollmentDate date
 foreign key(StudentId) references StudentInfo (StudentId),  -- Defining foreign Key 
 foreign key(CourseID) references Course (CourseID)
 );

 Insert INto StudentInfo(StudentId,FullName,Age,Email)
VALUES(1,'Raj',24,'Raj@gmail.com'),
      (2,'Aditi',25,'Aditi@gmail.com');
select * from StudentInfo;

Insert INto Course (CourseID,Coursename,Credits)
 VALUES (101, 'C# with MSSQL', 5),
        (102,'ASP.NET COre with Angular',6);
Select * FROM Course;

Insert into Enrollment( EnrollmentID, StudentId, CourseID, EnrollmentDate)
VALUES(1,1,101,'2025-01-10'),
       (2,2,102,'2025-04-12');
Select * FROM Enrollment;

--updating Age = 22
update StudentInfo 
SET Age = 22
where StudentId = 1;

Select * from StudentInfo;

-- Performing airmatic/ Logical operators operations 
SELECT FullName, Age + 1 AS NextYearAge FROM StudentInfo
where Age> 22 and Email Like '%gmail.com'; -- pattern matching 

Select s.FullName, c.Coursename, e.EnrollmentDate
From Enrollment e Join StudentInfo s ON e.StudentId=s.StudentId
Join Course c ON e.CourseID = c.CourseID;

