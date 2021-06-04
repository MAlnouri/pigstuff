
A = LOAD 'washington-history.csv' using PigStorage(',') AS
(date: chararray, state: chararray, death: int, deathConfirmed: int, deathIncrease: int, deathProbable: int, hospitalized: int, hospitalizedCumulative: int, hospitalizedCurrently: int, hospitalizedIncrease: int, inIcuCumulative: int, inIcuCurrently: int, negative: int, negativeIncrease: int, negativeTestsAntibody: int, negativeTestsPeopleAntibody: int, negativeTestsViral: int, onVentilatorCumulative: int, onVentilatorCurrently: int, totalCases: int, positiveCasesViral: int, newCases: int);

B = FOREACH A GENERATE date, totalCases, newCases;

--removes header names
C = FILTER B BY totalCases > -1;

STORE C INTO 'outputCases';


DUMP C;
