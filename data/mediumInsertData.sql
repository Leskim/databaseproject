 -- Adding data to the bloodBank

-- Inserting into bloodtransaction
-- values (transactID, bloodType, recepientID, bloodBankID, dateOut, empID, quantity, doctorName, bloodBank_Name);
-- bloodType (O+, O-, AB+, AB-, A+, A-, B+, B-)
-- bloodBankID -001-005 (004-KNH, 001-MediHeal, 002-RedCross, 003-MoiHospital)
--empID (001-015) [014-Kibiwot, 013- ]
 INSERT INTO bloodtransaction values(1, 'AB+',42, 004, '2004-02-27', 014, '15 units', 'Kibiwot', 'KNH' );
 INSERT INTO bloodtransaction values(2, 'A-',12, 002, '2012-02-27', 014, '15 units', 'Kibiwot', 'RedCross' );
 INSERT INTO bloodtransaction values(3, 'O-',21, 001, '2007-02-27', 014, '15 units', 'Kibiwot', 'MediHeal' );
 INSERT INTO bloodtransaction values(4, 'O+',1, 003, '2022-03-27', 014, '15 units', 'Kibiwot', 'MoiHospital' );
 INSERT INTO bloodtransaction values(5, 'B-',42, 001, '2004-06-27', 014, '15 units', 'Kibiwot', 'MediHeal' );
 INSERT INTO bloodtransaction values(6, 'AB+',1, 004, '2016-02-27', 014, '15 units', 'Kibiwot', 'KNH' );
 INSERT INTO bloodtransaction values(7, 'AB+',4, 003, '2018-07-27', 014, '15 units', 'Kibiwot', 'MoiHospital' );
 INSERT INTO bloodtransaction values(8, 'O+',61, 001, '2004-02-27', 014, '15 units', 'Kibiwot', 'MediHeal' );
 INSERT INTO bloodtransaction values(9, 'AB-',12, 001, '2004-08-27', 014, '15 units', 'Kibiwot', 'MediHeal' );
 INSERT INTO bloodtransaction values(10, 'AB+',1, 004, '2004-02-27', 014, '15 units', 'Kibiwot', 'KNH' );
 INSERT INTO bloodtransaction values(11, 'B-',9, 003, '2014-02-27', 014, '15 units', 'Kibiwot', 'MoiHospital' );
 INSERT INTO bloodtransaction values(12, 'A+',31, 004, '2021-02-27', 014, '15 units', 'Kibiwot', 'KNH' );
 INSERT INTO bloodtransaction values(13, 'B+',13, 002, '2017-02-27', 014, '15 units', 'Kibiwot', 'RedCross' );

 -- Inserting into blood
 INSERT INTO donor values();


 -- Inserting into recepient
 INSERT INTO recepient values();
