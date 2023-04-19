SELECT s.id, s.name FROM student s INNER JOIN mark m ON s.id = m.student_id GROUP BY s.id HAVING AVG(m.mark) > 8;
SELECT s.id, s.name FROM student s INNER JOIN mark m ON s.id = m.student_id WHERE m.mark >= 7 GROUP BY s.id HAVING MIN(m.mark) >= 7;
SELECT s.id, s.name FROM student s INNER JOIN payment p ON s.id = p.student_id WHERE YEAR(p.payment_date) = 2019 GROUP BY s.id HAVING COUNT(p.id) > 2;