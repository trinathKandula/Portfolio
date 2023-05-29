CREATE DATABASE STUDENT_REGISTRATION
go
USE STUDENT_REGISTRATION

CREATE TABLE Student(
    student_ID int NOT NULL  IDENTITY(1,1) PRIMARY KEY,
    st_FName varchar(255),
    st_LName varchar(255),
	st_DOB   date,
	st_Gender Varchar (10) check (st_Gender in ('Female','Male')),
);
CREATE TABLE Address(
    address_ID int not null IDENTITY(1,1) PRIMARY KEY,
    stu_Address varchar(255),
	stu_City varchar(255),
	stu_PCode varchar(255),
	stu_Country varchar(255),
	stu_Region varchar(255),
	st_ID_FK  int foreign key references Student(student_ID) ON UPDATE CASCADE
	);
CREATE TABLE Payment(
    payment_ID int not null  IDENTITY(1,1) PRIMARY KEY,
    payment_Type Varchar (10) check (payment_type in ('Cash','Card')),
	st_ID_FK  int foreign key references Student(student_ID) ON UPDATE CASCADE
);

INSERT INTO Student(st_FName,st_LName,st_DOB,st_Gender)
VALUES ('Eli','Beaton','1998-02-10','Male'),
       ('Will','Chute','1998-02-10','Male'),
       ('Trinath','Kandula','1998-02-10','Male');
INSERT INTO Address(stu_Address,stu_City ,stu_PCode,stu_Country ,stu_Region)
VALUES ('1000 leeds st','Halifax','B3M0L7','Canada','south'),
       ('1110 barrington st','Truro','K3M0L7','Canada','North'),
       ('Trinath','Dartmouth','A3M0L4','India','South');

INSERT INTO Payment(payment_type)
VALUES ('Cash'),
       ('Cash'),
	   ('Card');



