
A = LOAD 'Seattle_Pet_Licenses.csv' using PigStorage(',') AS
(License_Issue_Date: chararray, License_Number: chararray, Name: chararray, Species: chararray, Primary_Breed: chararray);

B = FOREACH A GENERATE License_Issue_Date, License_Number, Species, Primary_Breed;

--removes header names
C = FILTER B BY Species != 'Species';

STORE C INTO 'outputPets';


DUMP C;
