SELECT MIN(birthday) AS youngest_birthday FROM student;
SELECT MIN(payment_date) AS earliest_payment_date FROM payment;
SELECT AVG(mark) FROM mark JOIN subject ON mark.subject_id = subject.id WHERE subject.name = 'Math';
SELECT MIN(amount) AS min_weekly_payment FROM payment JOIN paymenttype ON payment.type_id = paymenttype.id WHERE paymenttype.name = 'WEEKLY';