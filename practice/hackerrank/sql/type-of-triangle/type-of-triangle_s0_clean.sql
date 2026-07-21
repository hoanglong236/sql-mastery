SELECT 
    CASE
        WHEN A = B AND B = C THEN 'Equilateral'
        WHEN (A = B AND A + B > C) OR (B = C AND B + C > A) OR (C = A AND C + A > B) THEN 'Isosceles'
        WHEN A + B > C AND A + C > B AND B + C > A THEN 'Scalene'
        ELSE 'Not A Triangle'
    END
FROM TRIANGLES;