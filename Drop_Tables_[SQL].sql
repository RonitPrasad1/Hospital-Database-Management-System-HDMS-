				-- DROP TABLES [SQL] Commands:

-- @E:\3rd_year_CUC\Spring\Database_Systems_Design\Project_#3_Hospital_Database\Drop_Tables_Output\Drop_Tables_[SQL].sql;

	-- Drops the DOCTORS Table and all of the data associated with it.
	DROP TABLE H_DOCTORS CASCADE CONSTRAINTS;
	COMMIT;	


	-- Drops the PATIENTS Table and all of the data associated with it.
	DROP TABLE H_PATIENTS CASCADE CONSTRAINTS;
	COMMIT;


	-- Drops the APPOINTMENTS Table and all of the data associated with it.
	DROP TABLE H_APPOINTMENTS CASCADE CONSTRAINTS;
	COMMIT;
	
	-- Drops the INSURANCE Table and all of the data associated with it.
	DROP TABLE H_INSURANCE CASCADE CONSTRAINTS;
	COMMIT;

	-- Drops the ROOMS Table and all of the data associated with it.
	DROP TABLE H_ROOMS CASCADE CONSTRAINTS;
	COMMIT;


	-- Drops the DEPARTMENTS Table and all of the data associated with it.
	DROP TABLE H_DEPARTMENTS CASCADE CONSTRAINTS;
	COMMIT;