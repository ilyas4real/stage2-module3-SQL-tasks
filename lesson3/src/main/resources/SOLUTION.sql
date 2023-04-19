ALTER TABLE student ADD CONSTRAINT birthday_not_null CHECK (birthday IS NOT NULL);
ALTER TABLE mark ADD CONSTRAINT mark1-10 CHECK (mark > 0 AND mark < 11), ADD CONSTRAINT mark_student_id_not_null CHECK (student_id IS NOT NULL), ALTER TABLE MARK ADD CONSTRAINT subjectid_not_null CHECK (subject_id IS NOT NULL);
ALTER TABLE subject ADD CONSTRAINT sub5 CHECK (grade > 0 AND grade < 6);
ALTER TABLE paymenttype ADD CONSTRAINT paymenttype_name_unique UNIQUE (name);
ALTER TABLE payment ADD CONSTRAINT type_id_not_null CHECK (type_id IS NOT NULL), ALTER TABLE payment ADD CONSTRAINT amount_not_null CHECK (amount IS NOT NULL), ALTER TABLE PAYMENT ADD CONSTRAINT date_not_null CHECK (payment_date IS NOT NULL);