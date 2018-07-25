create database demo
use demo
create table ritu
(
id int identity(1,1),
username varchar(200),
password varchar(200)
)

create table [dbo].[student]
(
[studentID] int identity(1,1) not null,
[LastName] NVarChar(50) null,
[FirstName] NVarChar(50) null,
[EnrollmentDate] datetime null,
primary key clustered([studentID] ASC)
)

create table [dbo].[Course]
(
[CourseID] int identity(1,1) not null,
[Title] NvarChar(50) null,
[Credits] int null,
Primary key clustered ([courseID] ASC)
)

create table [dbo].[Enrollement]
(
EnrollmentID int identity(1,1) not null,
Grade decimal(3,2) null,
courseID int not null,
StudentID int not null,
Primary key clustered (EnrollmentID ASC),
constraint [FK_dbo.Enrollment_dbo.Course_CourseID] Foreign key ([CourseID]) references [dbo].[Course]([CourseID]) On delete cascade,
constraint [FK_dbo.Enrollment_dbo.Student_StudentID] Foreign key ([StudentID]) references [dbo].[Student]([StudentID]) On delete cascade
)

drop table ritu

sp_help

select * from course
select * from Enrollement
select * from student

create database Student

use Student
drop table LoginPage

create table LoginData
(
SlNo int identity(1,1),
UserName varchar(40) primary key,
Password varchar(40)
)

