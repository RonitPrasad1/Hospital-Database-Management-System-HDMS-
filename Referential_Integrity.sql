-- REFERENTIAL INTEGRITY (Primary Keys and Foreign Keys) FOR HOSPITAL DATABASE:

-- @E:\3rd_year_CUC\Spring\Database_Systems_Design\Project_#3_Hospital_Database\Referential_Integrity_Ouput\Referential_Integrity.sql;

-- —————————————————————————————————————————————————————————————————————————

-- Primary Keys:

-- H_DOCTORS Table:
    ALTER TABLE H_DOCTORS
    ADD CONSTRAINT PK_H_DOCTORS_Employee_ID
	PRIMARY KEY (EmployeeID);

    ALTER TABLE H_DOCTORS
    ADD CONSTRAINT UNQ_H_DOCTORS_EMPLOYEE_SSN 
	UNIQUE (EmployeeSSN);
    COMMIT;



-- H_PATIENTS Table:
    ALTER TABLE H_PATIENTS
    ADD CONSTRAINT PK_H_PATIENTS_DoublePkey
	PRIMARY KEY (PatientID, InsuranceNumber);

     ALTER TABLE H_PATIENTS
     ADD CONSTRAINT UNQ_H_PATIENTS_PATIENT_SSN 
	UNIQUE (PatientSSN);
    COMMIT;



-- H_APPOINTMENTS Table:
    ALTER TABLE H_APPOINTMENTS
    ADD CONSTRAINT PK_H_APPOINTMENTS_DoublePkey
    	PRIMARY KEY (AptID, RoomID);
    COMMIT;



-- H_INSURANCE Table:
    ALTER TABLE H_INSURANCE
    ADD CONSTRAINT PK_H_INSURANCE_Insurance_ID
    	PRIMARY KEY (InsuranceID);
    COMMIT;



-- H_ROOMS Table:
    ALTER TABLE H_ROOMS
    ADD CONSTRAINT PK_H_ROOMS_Room_ID
	PRIMARY KEY (RoomID);
    COMMIT;



-- H_DEPARTMENTS Table:
    ALTER TABLE H_DEPARTMENTS
    ADD CONSTRAINT PK_H_DEPARTMENTS_Dpt_ID
	PRIMARY KEY (DptID);
    COMMIT;
-- —————————————————————————————————————————————————————————————————————————

-- Foreign Keys:

-- H_PATIENTS Table: 

    ALTER TABLE H_PATIENTS
    ADD CONSTRAINT FK_H_PATIENTS_Doctor_ID
	FOREIGN KEY (DoctorID) REFERENCES H_DOCTORS(EmployeeID);

    ALTER TABLE H_PATIENTS
    ADD CONSTRAINT FK_H_PATIENTS_Insurance_Number
	FOREIGN KEY (InsuranceNumber) REFERENCES H_INSURANCE(InsuranceID);
    COMMIT;



-- H_APPOINTMENTS Table: 

    ALTER TABLE H_APPOINTMENTS
    ADD CONSTRAINT FK_H_APPOINTMENTS_PATIENT_ID
	FOREIGN KEY (PatientID) REFERENCES H_PATIENTS(PatientID);
	
    ALTER TABLE H_APPOINTMENTS
    ADD CONSTRAINT FK_H_APPOINTMENTS_ROOM_ID
	FOREIGN KEY (RoomID) REFERENCES H_ROOMS(RoomID);
    COMMIT;



-- H_DEPARTMENTS Table:

    ALTER TABLE H_DEPARTMENTS
    ADD CONSTRAINT FK_H_DEPARTMENTS_DOCTOR_ID
	FOREIGN KEY (DoctorID) REFERENCES H_DOCTORS(EmployeeID);


    COMMIT;
-- —————————————————————————————————————————————————————————————————————————