DELETE FROM student
 WHERE id IN (
     SELECT s.id
     FROM student s
     JOIN mark m ON s.id = m.student_id
     JOIN subject sb ON m.subject_id = sb.id
     WHERE sb.grade > 4
 );
 DELETE FROM mark
 WHERE student_id NOT IN (SELECT id FROM student);
 DELETE FROM student
 WHERE id IN (
     SELECT m.student_id
     FROM mark m
     WHERE m.mark < 4
 );
 DELETE FROM mark
 WHERE student_id NOT IN (SELECT id FROM student);
 DELETE FROM payment
 WHERE type_id IN (
     SELECT id
     FROM paymenttype
     WHERE name = 'Daily'
 );
 DELETE FROM paymenttype
 WHERE name = 'Daily';
 DELETE FROM mark
 WHERE mark < 7;