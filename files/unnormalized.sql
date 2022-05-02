
create table Donor (
  donorID int (11),
  firstName varchar (50),
  lastName varchar (50),
  bloodType varchar (3),
  address varchar (60),
  email varchar (100),
  phone varchar (100),
  age int (3),
  primary key (donorID)
);

create table Recepient (
  firstName varchar (50),
  lastName varchar (50),
  recepientID int (11),
  bloodType varchar (3),
  address varchar (60),
  email varchar (100),
  phone varchar (100),
  age int (3),
  primary key (recepientID)
);

create table BloodTransaction (
  transactID int (11),
  bloodType varchar (3),
  recepientID int (11),
  bloodBankID int (11),
  dateOut datetime,
  empID int (11),
  quantity varchar (10),
  doctorName varchar (50),
  bloodBank_Name varchar (30),
  quantity varchar (5)
);
