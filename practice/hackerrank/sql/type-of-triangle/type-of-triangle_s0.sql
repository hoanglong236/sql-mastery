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
SELECT 
    CASE
        WHEN A = B AND B = C THEN 'Equilateral'
        WHEN (A = B AND A + B > C) OR (B = C AND B + C > A) OR (C = A AND C + A > B) THEN 'Isosceles'
        WHEN A + B > C AND A + C > B AND B + C > A THEN 'Scalene'
        ELSE 'Not A Triangle'
    END
FROM TRIANGLES;

exit;