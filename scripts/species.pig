A = LOAD 'Seattle_Pet_Licenses.csv' using PigStorage(',') AS
(License_Issue_Date: chararray, License_Number: chararray, Name: chararray, Species: chararray, Primary_Breed: chararray);

B = FOREACH A GENERATE
	(CASE Species
	WHEN 'Cat' THEN 1
	WHEN 'Dog' THEN 2
	ELSE 3 END),
	(Species=='Cat' OR Species=='Dog' ? Species : 'Other');

--removes header names
C = FILTER B BY Species != 'Species';

D = DISTINCT C;

STORE D INTO 'outputSpecies';

DUMP D;
