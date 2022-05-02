
-- Example Queries on Hospital Database:


/*
The Oracle SQL Key Words used in the Example Queries
below are: 
	- SELECT           
	- LIKE             
	- FROM         
	- WHERE  	   
	- GROUPBY
	- ORDERBY          
	- DISTINCT
	- COUNT and COUNT(*)
	- IN
	- AND
	- OR
	- ASC (Ascending)  
	- DESC (Decending) 
*/


    					 -- **Easy, Medium, and Nested-level Queries**

-- ————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

1.) -- Selects the all information (PatientId, FirstName, Middle Initial, LastName, Gender, VisitReason, and DoctorID) from the H_PATIENTS Table.
    
	SELECT * FROM H_PATIENTS;

-- ————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
 
2.) -- Selects the FirstName, MiddleInitial, LastName, SSN, Salary, and EmployeeID from H_DOCTORS.
   
	SELECT FirstName, MiddleInitial, LastName, SSN, Salary, EmployeeID
	FROM H_DOCTORS;

-- ————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

3.) -- Selects the PatientID, FirstName, and LastName from the Patients Table where the PatientID is between 57010 and 57015 and the DoctorID is greater than 27500 and we'll order that in Ascending order by DoctorID.
   
	SELECT PatientID, FirstName, LastName, DoctorID
	FROM H_PATIENTS WHERE PatientID >= 575010 AND PatientID <= 575015
	ORDER BY DoctorID ASC;

-- ————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

4.) -- Selects the FirstName, MiddleInitial, LastName, and EmployeeID from Doctors Table where the EmployeeID starts with a "1" and we'll order this in Descending Order by EmployeeID;

	SELECT FirstName, MiddleInitial, LastName, EmployeeID
	FROM H_DOCTORS
	WHERE EmployeeID LIKE '1%'
	ORDER BY EmployeeID DESC; 

-- ————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

5.) -- Select the Visit Reason and DoctorID that starts with the character letter "I" from the Patients Table.

	SELECT VisitReason, DoctorID FROM H_PATIENTS
	WHERE VisitReason LIKE 'I%';

-- ————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

6.) -- Select the Doctor's FirstName and their LastName from the Doctor's Table where their Employee ID from the Patients Table is greater than 39000;
	
	-- 1st way of writing:

	   SELECT H_DOCTORS.FirstName, H_DOCTORS.LastName
	   FROM H_DOCTORS
	   WHERE H_DOCTORS.EmployeeID 
	   IN (SELECT H_PATIENTS.DoctorID FROM H_PATIENTS WHERE DoctorID > 39000);


	-- 2nd way of writing:

	   --SELECT FirstName, LastName 
	   --FROM H_DOCTORS
	   --WHERE EXISTS (DoctorID FROM H_PATIENTS WHERE DoctorID > 39000);

-- ————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

7.)  -- Selects the Distinct Count of all the different types of Gender in the Doctors Table. 

	SELECT DISTINCT
	Gender, COUNT(*)
	FROM H_DOCTORS
	GROUP BY Gender;

-- ————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

8.) -- Select the AppointmentID, Appointment Date, and the Appointment Time from the Appointments Table where the RoomID from the Rooms Table starts with character "2" OR "50".

	
	-- 1st way of writing:

	   SELECT H_APPOINTMENTS.AptID, H_APPOINTMENTS.AptDate, H_APPOINTMENTS.AptTime
	   FROM H_APPOINTMENTS
	   WHERE H_APPOINTMENTS.RoomID
	   IN (SELECT H_ROOMS.RoomID FROM H_ROOMS WHERE RoomID LIKE '2%' OR RoomID LIKE '50%');


	-- 2nd way of writing:

	   --SELECT AptID, AptDate, AptTime FROM H_APPOINTMENTS
	   --WHERE EXISTS (SELECT RoomID FROM H_ROOMS where RoomID LIKE '2%' OR RoomID LIKE '50%');
	   

-- ————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

