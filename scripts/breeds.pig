A = LOAD 'Seattle_Pet_Licenses.csv' USING org.apache.pig.piggybank.storage.CSVExcelStorage() AS 
(License_Issue_Date: chararray, License_Number: chararray, Name: chararray, Species: chararray, Primary_Breed: chararray);

B = FOREACH A GENERATE Primary_Breed;

C = DISTINCT B;

D = RANK C;


STORE D INTO 'outputBreeds';


DUMP D;
