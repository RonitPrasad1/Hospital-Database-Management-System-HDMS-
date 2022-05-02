
-- Enter the path below to format the output of the data:

-- @E:\3rd_year_CUC\Spring\Database_Systems_Design\Project_#3_Hospital_Database\OracleFormatCommands.sql;
 
	ALTER SESSION SET NLS_DATE_FORMAT = 'YYYY-MM-DD';
		-- Alter’s  the dating format so that the terminal Oracle can read it properly.

	SET LINES 256
		-- The total number of characters on one line before displaying the next one.

	SET TRIMOUT ON
		-- Controls the trailing spaces at the end of a line.

	SET TAB OFF
		-- Controls if tab characters are used when generating spaces.

	SET PAGESIZE 1000
		-- Sets the pagesize to be n-number of rows [in my case, it’s 1000].

	SET LINESIZE 1000
		-- Sets the total number of characters [in my case, it’s 1000] you can display on a line.

	SET WRAP OFF
		-- Lines are basically truncated.

	SET DEFINE OFF
		-- Let's me take in "&".