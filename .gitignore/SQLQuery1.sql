
create database try1
use try1

create table sampledatabase
(
	rollno int identity(1,1),
	name varchar(20)
)

insert into sampledatabase values('rakesh');
insert into sampledatabase values('sukesh');
insert into sampledatabase values('pakesh');
insert into sampledatabase values('fakesh');
insert into sampledatabase values('bakesh');
insert into sampledatabase values('rakesh');
insert into sampledatabase values('sukesh');
insert into sampledatabase values('pakesh');
insert into sampledatabase values('fakesh');
insert into sampledatabase values('bakesh');

select * from sampledatabase
select top 1000 * from sampledatabase
drop table sampledatabase