			-- TABLES THAT WERE USED FOR THE HOSPITAL DATABASE:


-- @E:\3rd_year_CUC\Spring\Database_Systems_Design\Project_#3_Hospital_Database\Create_Table_Output\Create_Table_[SQL].sql


-- ————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
-- DOCTORS TABLE:

CREATE TABLE H_DOCTORS 
(
	FirstName 			VARCHAR(100),
	MiddleInitial 			CHAR(2),
	LastName 			VARCHAR(100),
	HomeAddress 			VARCHAR(100),
	State 				VARCHAR(50),
	City 				VARCHAR(50),
	Salary 				CHAR(11),
	Gender  			VARCHAR(25),
	Ethnicity 			VARCHAR(50),
	EmployeeSSN 			CHAR(11),
	EmployeeID 			INT
);
	

   ALTER TABLE H_DOCTORS
   MODIFY 
	(FirstName VARCHAR(100) CONSTRAINT NN_H_DOCTORS_First_Name NOT NULL);


   ALTER TABLE H_DOCTORS
   MODIFY
	(MiddleInitial CHAR(2) CONSTRAINT NN_H_DOCTORS_Middle_Initial NOT NULL);


   ALTER TABLE H_DOCTORS
   MODIFY 
	(LastName VARCHAR(100) CONSTRAINT NN_H_DOCTORS_Last_Name NOT NULL);


   ALTER TABLE H_DOCTORS
   MODIFY 
	(HomeAddress VARCHAR(100) CONSTRAINT NN_H_DOCTORS_Home_Address NOT NULL);


   ALTER TABLE H_DOCTORS
   MODIFY 
	(State VARCHAR(50) CONSTRAINT NN_H_DOCTORS_State NOT NULL);


   ALTER TABLE H_DOCTORS
   MODIFY
	(City VARCHAR(50) CONSTRAINT NN_H_DOCTORS_City NOT NULL);


   ALTER TABLE H_DOCTORS
   MODIFY
	(Gender VARCHAR(25) CONSTRAINT NN_H_DOCTORS_Gender NOT NULL);


   ALTER TABLE H_DOCTORS
   MODIFY 
	(Salary CHAR(11) CONSTRAINT NN_H_DOCTORS_Salary NOT NULL);


   ALTER TABLE H_DOCTORS
   MODIFY 
	(Ethnicity VARCHAR(50) CONSTRAINT NN_H_DOCTORS_Ethnicity NOT NULL);


   ALTER TABLE H_DOCTORS
   MODIFY 
	(EmployeeSSN CHAR(11) CONSTRAINT NN_H_DOCTORS_Employee_SSN NOT NULL);


   ALTER TABLE H_DOCTORS
   MODIFY 
	(EmployeeID INT CONSTRAINT NN_H_DOCTORS_Employee_ID NOT NULL);


   COMMIT;

-- ————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
-- PATIENTS TABLE:

CREATE TABLE H_PATIENTS  
(
	PatientID 			INT,
	FirstName 			VARCHAR(50),
	MiddleInitial			CHAR(2),
	LastName 			VARCHAR(50),
	Gender 				VARCHAR(25),
	PatientSSN			CHAR(11),
	VisitReason 			VARCHAR(50),
	DoctorID 			INT,
	InsuranceNumber			INT
);


   ALTER TABLE H_PATIENTS
   MODIFY
	(PatientID INT CONSTRAINT NN_H_PATIENTS_PATIENT_ID NOT NULL);


   ALTER TABLE H_PATIENTS
   MODIFY
	(FirstName VARCHAR(50) CONSTRAINT NN_H_PATIENTS_First_Name NOT NULL);


   ALTER TABLE H_PATIENTS
   MODIFY 
	(MiddleInitial CHAR(2) CONSTRAINT NN_H_PATIENTS_Middle_Initial NOT NULL);


   ALTER TABLE H_PATIENTS
   MODIFY
	(LastName VARCHAR(50) CONSTRAINT NN_H_PATIENTS_Last_Name NOT NULL);


   ALTER TABLE H_PATIENTS
   MODIFY 
	(Gender VARCHAR(25) CONSTRAINT NN_H_PATIENTS_Gender NOT NULL);

   ALTER TABLE H_PATIENTS
   MODIFY
	(PatientSSN CHAR(11) CONSTRAINT NN_H_PATIENTS_PATIENT_SSN NOT NULL);


   ALTER TABLE H_PATIENTS
   MODIFY
	(VisitReason VARCHAR(50) CONSTRAINT NN_H_PATIENTS_Visit_Reason NOT NULL);


   ALTER TABLE H_PATIENTS
   MODIFY
	(DoctorID INT CONSTRAINT NN_H_PATIENTS_Doctor_ID NOT NULL);
	
   ALTER TABLE H_PATIENTS
   MODIFY
	(InsuranceNumber INT CONSTRAINT NN_H_PATIENTS_INSURANCE_NUMBER NOT NULL);


   -- Matches the Sequences "Max Value" Boundary.
   ALTER TABLE H_PATIENTS
   ADD CONSTRAINT C_Patient_ID CHECK (PatientID >= 575001 AND PatientID <= 10000000);


   COMMIT;

-- ————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
-- APPOINTMENTS TABLE:

CREATE TABLE H_APPOINTMENTS 
(
	AptID 				INT,
	AptDate 			DATE,
	AptTime 			VARCHAR(50),
	AptDoctorID                     INT,
	PatientID 			INT,
        RoomID				INT
);


   ALTER TABLE H_APPOINTMENTS
   MODIFY 
	(AptID INT CONSTRAINT NN_H_APPOINTMENTS_Apt_ID NOT NULL);


   ALTER TABLE H_APPOINTMENTS
   MODIFY 
	(AptDate DATE CONSTRAINT NN_H_APPOINTMENTS_Apt_Date NOT NULL); 


   ALTER TABLE H_APPOINTMENTS
   MODIFY 
	(AptTime VARCHAR(50) CONSTRAINT NN_H_APPOINTMENTS_Apt_Time NOT NULL); 


   ALTER TABLE H_APPOINTMENTS
   MODIFY 
	(AptDoctorID INT CONSTRAINT NN_H_APPOINTMENTS_Apt_Doctor_ID NOT NULL); 


   ALTER TABLE H_APPOINTMENTS
   MODIFY 
	(PatientID INT CONSTRAINT NN_H_APPOINTMENTS_Patient_ID NOT NULL);


   ALTER TABLE H_APPOINTMENTS
   MODIFY 
	(RoomID INT CONSTRAINT NN_H_APPOINTMENTS_Room_ID NOT NULL);   


   -- Matches the Sequences "Max Value" Boundary.
   ALTER TABLE H_APPOINTMENTS
   ADD CONSTRAINT C_Apt_ID CHECK (AptID >= 10001 AND AptID <= 100000);


   COMMIT;

-- ————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
-- INSURANCE TABLE:

CREATE TABLE H_INSURANCE
(
	InsuranceName		VARCHAR(50),
	InsuranceID		INT
);


   ALTER TABLE H_INSURANCE 
   MODIFY 
	(InsuranceName VARCHAR(50) CONSTRAINT NN_H_INSURANCE_INSURANCE_NAME NOT NULL);

   ALTER TABLE H_INSURANCE 
   MODIFY 
	(InsuranceID INT CONSTRAINT NN_H_INSURANCE_INSURANCE_ID NOT NULL);


   COMMIT;

-- ————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
-- ROOMS TABLE:

CREATE TABLE H_ROOMS 
(
	FloorNumber 			INT,
	RoomNumber 			CHAR(4),
        Status                          CHAR(8),
        RoomID                          INT
);


   ALTER TABLE H_ROOMS
   MODIFY 
	(FloorNumber INT CONSTRAINT NN_H_ROOMS_Floor_Number NOT NULL);


   ALTER TABLE H_ROOMS
   MODIFY 
	(RoomNumber CHAR(4) CONSTRAINT NN_H_ROOMS_Room_Number NOT NULL);


   ALTER TABLE H_ROOMS
   MODIFY 
	(Status CHAR(8) CONSTRAINT NN_H_ROOMS_Status NOT NULL);


   ALTER TABLE H_ROOMS
   MODIFY 
	(RoomID INT CONSTRAINT NN_H_ROOMS_Room_ID NOT NULL);   


   COMMIT;

-- ————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
-- DEPARTMENTS TABLE:

CREATE TABLE H_DEPARTMENTS 
(
	DptName 			VARCHAR(50),
	DptID 				INT,
        DoctorID                        INT,
	DptFloorNumber 			NUMBER
);


   ALTER TABLE H_DEPARTMENTS
   MODIFY
	(DptName VARCHAR(50) CONSTRAINT NN_H_DEPARTMENTS_Dpt_Name NOT NULL);


   ALTER TABLE H_DEPARTMENTS
   MODIFY
	(DptID INT CONSTRAINT NN_H_DEPARTMENTS_Dpt_ID NOT NULL);


   ALTER TABLE H_DEPARTMENTS
   MODIFY
	(DoctorID INT CONSTRAINT NN_H_DEPARTMENTS_Doctor_ID NOT NULL);

  
   ALTER TABLE H_DEPARTMENTS
   MODIFY 
	(DptFloorNumber NUMBER CONSTRAINT NN_H_DEPARTMENTS_Dpt_Floor_Number NOT NULL);


   -- Matches the Sequences "Max Value" Boundary.
   ALTER TABLE H_DEPARTMENTS 
   ADD CONSTRAINT C_Dpt_Floor_Number CHECK (DptFloorNumber >= 1 and DptFloorNumber <= 20);


   COMMIT;

-- ————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

