create database TaskBooks

use TaskBooks

create table Books(
Id int primary key identity,
Name nvarchar(max),
PageCount int,
AuthorId int
)

alter table Books
drop column AuthorId

alter table Books
add Authors_Id int foreign key references Authors(Id)

create table Authors(
Id int primary key identity,
Name nvarchar(30),
Surname nvarchar(30)
)

select * from(
select a.Name + ' ' + Surname as Fullname, Books.Name, Books.PageCount from Books
full join Authors as a
on Books.Authors_Id=a.Id
) as Models



--select Name from Books
--except
--select Name from Authors

--select Name from Books
--intersect
--select Name from Authors

--select distinct Name from Authors

