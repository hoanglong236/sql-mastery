SET NULL "NULL";
SET FEEDBACK OFF;
SET ECHO OFF;
SET HEADING OFF;
SET WRAP OFF;
SET LINESIZE 10000;
SET TAB OFF;
SET PAGES 0;
SET DEFINE OFF;

/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/

SELECT DOCTOR, PROFESSOR, SINGER, ACTOR
FROM (
    SELECT
        NAME,
        OCCUPATION,
        ROW_NUMBER() OVER (PARTITION BY OCCUPATION ORDER BY NAME) AS RN
    FROM OCCUPATIONS
)
PIVOT (
    MAX(NAME)
    FOR OCCUPATION
    IN (
        'Doctor' AS DOCTOR,
        'Professor' AS PROFESSOR,
        'Singer' AS SINGER,
        'Actor' AS ACTOR
    )
)
ORDER BY RN;

exit;