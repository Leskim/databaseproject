create table MedicalPersonnel (
  empID int (11) AUTO_INCREMENT NOT NULL,
  firstName varchar (50),
  lastName varchar (50),
  address varchar (60),
  email varchar (100),
  phone varchar (100),
  gender varchar (20),
  primary key (empID)
);

create table Donor (
  donorID int (11) AUTO_INCREMENT NOT NULL,
  firstName varchar (50),
  lastName varchar (50),
  bloodType varchar (3),
  address varchar (60),
  email varchar (100),
  phone varchar (100),
  age int (3),
  primary key (donorID)
);

create table Blood (
  bloodBankID int (11),
  datedonated datetime,
  donorID int (11),
  quantity varchar (10),
  primary key bloodBankID,
  foreign key (donorID) references Donor (donorID)
  on delete restrict,
  foreign key (bloodBankID) references BloodBank (bloodBankID)
  on delete restrict
);

create table BloodBank (
  bloodBank_name varchar (50),
  bloodBank_address varchar (60),
  bloodBankID int (11),
  primary key bloodBankID,
  foreign key (bloodBankID) references Blood (bloodBankID)
  on delete restrict
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
  foreign key (bloodBankID) references BloodBank (bloodBankID)
  on delete restrict,
  foreign key (empID) references MedicalPersonnel (empID)
  on delete restrict,
  foreign key (recepientID) references Recepient (recepientID)
  on delete restrict
);
