SELECT * FROM subject WHERE grade > (SELECT AVG(grade) FROM subject);
SELECT * FROM student WHERE (SELECT SUM(amount) FROM payment WHERE student_id = student.id) < (SELECT AVG(amount) FROM payment);
