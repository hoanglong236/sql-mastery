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
    B1.N,
    CASE
        WHEN B1.P IS NULL THEN 'Root'
        WHEN EXISTS (SELECT 1 FROM BST B2 WHERE B2.P = B1.N) THEN 'Inner'
        ELSE 'Leaf'
    END AS NODE_TYPE
FROM BST B1
ORDER BY B1.N;

exit;