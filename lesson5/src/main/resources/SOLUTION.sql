SELECT * FROM PAYMENT WHERE amount >= 500;
-- Select students older than 20
SELECT * FROM STUDENT WHERE birthday < DATEADD(YEAR, -20, GETDATE());
-- Select students from the same group (10) but younger than 20
SELECT * FROM STUDENT WHERE groupnumber = 10 AND birthday > DATEADD(YEAR, -20, GETDATE());
--  Select Students with Name ‘Mike’ or from the group 4, 5, 6
SELECT * FROM STUDENT WHERE name = 'Mike' OR groupnumber IN (4, 5, 6);
-- Select Payments dated conducted in past 8 months
SELECT * FROM PAYMENT WHERE payment_date >= DATEADD(MONTH, -8, GETDATE());
-- Select all students whose name starts with ‘A’
SELECT * FROM STUDENT WHERE name LIKE 'A%';
-- Select students with name = Roxi and group= 4 or name Tallie and group = 9
SELECT * FROM STUDENT WHERE (name = 'Roxi' AND groupnumber = 4) OR (name = 'Tallie' AND groupnumber = 9);