create database SLKDatabase
use SLKDataBase

create table registration
(
	SlNo int identity(1,1),
	UserName varchar(20),
	EmailId varchar(40) primary key nonclustered,
	Password varchar(20),
	ConfirmPassword varchar(20),
)

select * from registration
drop table registration

insert into registration values ('ritu','ritu@gmail.com','12345','12345')

update registration set EmailId='thahaseen@gmail.com' where UserName='Thahaseen'

create table detail
	(
		UserId int identity(1000,1) ,
		FirstName varchar(20),
		MiddleName varchar(20),
		LastName varchar(20),
		PhoneNumber varchar(20),
		Gender varchar(10),
		DateOfBirth varchar(15),
		EmailID varchar(40)primary key FOREIGN KEY(EmailID) REFERENCES registration(EmailId),
		Address varchar(60),
		City varchar(30),
		ZipCode varchar(10),
		State varchar(30),
		Country varchar(40),
		Department varchar(30),		
		TenthBoard varchar(30),
		TenthMarks int,
		TwelfthBoard varchar(30),
		TwelfthMarks int,		
	)

drop table detail

select * from detail