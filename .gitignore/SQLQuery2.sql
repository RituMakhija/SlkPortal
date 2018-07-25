create database SLK

use SLK

create table slkreg
(
	SlNo int identity(1,1),
	UserName varchar(20),
	EmailId varchar(40) primary key nonclustered,
	Password varchar(20),
	ConfirmPassword varchar(20),
)

drop table slkreg

select * from slkreg 

create procedure Sample1
(
	@UserName varchar(20),
	@EmailId varchar(40),
	@Password varchar(20)
)
	As
	begin
	insert into slkreg values(@UserName,@EmailId,@Password)
	end

	drop procedure Sample3

	create table details
	(
		UserId int identity(1000,1),
		FirstName varchar(20),
		LastName varchar(20),
		PhoneNumber varchar(20),
		EmailID varchar(40) FOREIGN KEY(EmailID) REFERENCES slkreg(EmailId),
		Address varchar(60),
		City varchar(30),
		State varchar(30),
		Country varchar(40),
		Department varchar(30),
		Gender varchar(10),
		TenthBoard varchar(30),
		TenthMarks int,
		TwelfthBoard varchar(30),
		TwelfthMarks int,
	)

	select * from details

	drop table details

	create procedure Sample2
(
	@FirstName varchar(20),
	@LastName varchar(20),
	@PhoneNumber varchar(20),
	@EmailID varchar(30),
	@Address varchar(60),
	@City varchar(30),
	@State varchar(30),
	@Country varchar(40),
	@Department varchar(30),
	@Gender varchar(10),
	@TenthBoard varchar(30),
	@TenthMarks int,
	@TwelfthBoard varchar(30),
	@TwelfthMarks int,
	@Delete_Flag nchar(2)
)
	As
	begin
	insert into details values(@FirstName,@LastName,@PhoneNumber,@EmailID,@Address,@City,@State,@Country,@Department,@Gender,@TenthBoard,@TenthMarks,@TwelfthBoard,@TwelfthMarks,@Delete_Flag)
	end

	create procedure Sample3
(
	@UserId int,
	@FirstName varchar(20),
	@LastName varchar(20),
	@PhoneNumber varchar(20),
	@EmailID varchar(30),
	@Address varchar(60),
	@City varchar(30),
	@State varchar(30),
	@Country varchar(40),
	@Department varchar(30),
	@Gender varchar(10),
	@TenthBoard varchar(30),
	@TenthMarks int,
	@TwelfthBoard varchar(30),
	@TwelfthMarks int,
	@Delete_Flag nchar(2)
)
	As
	begin
	update details 
	set FirstName=@FirstName,
		LastName=@LastName,
		PhoneNumber=@PhoneNumber,
		EmailID=@EmailID,
		Address=@Address,
		City=@City,
		State=@State,
		Country=@Country,
		Department=@Department,
		Gender=@Gender,
		TenthBoard= @TenthBoard,
		TenthMarks= @TenthMarks,
		TwelfthBoard= @TwelfthBoard,
		TwelfthMarks= @TwelfthMarks,
		Delete_Flag=@Delete_Flag

	where UserId=@UserId
	end

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