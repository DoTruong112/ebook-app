use master
go
create database ebook_app
go
use ebook_app
go
create table [user]
(
	id int primary key identity not null,
	name varchar(45),
	email varchar(45),
	phno varchar(45),
	[password] varchar(45),
	adress varchar(45),
	landmark varchar(45),
	city varchar(45),
	[state] varchar(45)
)
go
create table [book_dtls]
(
	bookId int primary key identity not null,
	bookname varchar(45), 
	author varchar(45),
	price float,
	bookCategory varchar(45),
	[status] varchar(45),
	photo varchar(45),
	email varchar(45)
)
go

create table [cart]
(
	cid int primary key identity not null,
	bid int, 
	[uid] int,
	bookName varchar(45),
	author varchar(45),
	price float,
	total_price float

)
go
create table [book_order]
(
	id int primary key not null identity,
	order_id varchar(45),
	[user_name] varchar(45),
	email varchar(45),
	[address] varchar(100),
	phone varchar(45),
	book_name varchar(45),
	author varchar(45),
	price varchar(45),
	payment varchar(45) 
)

