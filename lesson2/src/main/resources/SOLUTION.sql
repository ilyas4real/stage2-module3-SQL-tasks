-- Insert new students
INSERT INTO student (name, birthday, groupnumber, grade) VALUES
    ('John', '2010-06-15', 1, 1),
    ('Chris', '2010-08-23', 1, 1),
    ('Carl', '2010-10-10', 1, 1),
    ('Oliver', '2009-05-02', 2, 2),
    ('James', '2009-09-17', 2, 2),
    ('Lucas', '2009-12-20', 2, 2),
    ('Henry', '2008-08-08', 2, 2),
    ('Jacob', '2007-03-27', 3, 3),
    ('Logan', '2007-11-09', 3, 3),
    -- Add more students for grades 4 and 5 here
    ('Emma', '2006-05-12', 4, 4),
    ('Sophia', '2006-11-22', 4, 4),
    ('Noah', '2005-08-30', 5, 5),
    ('William', '2005-12-03', 5, 5),
    ('Isabella', '2004-09-15', 5, 5);

-- Insert new subjects
INSERT INTO subject (name, description, grade) VALUES
    ('Art', 'Art and music for 1 grade', 1),
    ('Music', 'Art and music for 1 grade', 1),
    ('Geography', 'Geography and history for 2 grade', 2),
    ('History', 'Geography and history for 2 grade', 2),
    ('PE', 'PE and math for 3 grade', 3),
    ('Math', 'PE and math for 3 grade', 3),
    ('Science', 'Science and IT for 4 grade', 4),
    ('IT', 'Science and IT for 4 grade', 4),
    ('Science2', '2nd subject for 5 grade', 5),
    ('IT2', '2nd subject for 5 grade', 5);

-- Insert new payment types
INSERT INTO paymenttype (name) VALUES
    ('DAILY'),
    ('WEEKLY'),
    ('MONTHLY');

-- Insert new payments
INSERT INTO payment (type_id, amount, payment_date, student_id) VALUES
    ((SELECT id FROM paymenttype WHERE name = 'WEEKLY'), 50.00, '2023-04-16 09:00:00', (SELECT id FROM student WHERE name = 'John')),
    ((SELECT id FROM paymenttype WHERE name = 'MONTHLY'), 150.00, '2023-04-01 09:00:00', (SELECT id FROM student WHERE name = 'Oliver')),
    ((SELECT id FROM paymenttype WHERE name = 'WEEKLY'), 60.00, '2023-04-16 09:00:00', (SELECT id FROM student WHERE name = 'Henry')),
    ((SELECT id FROM paymenttype WHERE name = 'DAILY'), 10.00, '2023-04-16 09:00:00', (SELECT id FROM student WHERE name = 'James'));
    -- insert more
    INSERT INTO payment (type_id, amount, payment_date, student_id) VALUES
    ((SELECT id from student WHERE name = 'MONTHLY'), 25.00, '2023-04-16 09:00:00', (SELECT id FROM students where name = 'Carl'));

-- Insert new marks
INSERT INTO mark (student_id, subject_id, mark)
VALUES
((SELECT id FROM student WHERE name = 'Chris'), (SELECT id FROM subject WHERE name = 'Art and music'), 8),
((SELECT id FROM student WHERE name = 'Oliver'), (SELECT id FROM subject WHERE name = 'Geography and history'), 5),
((SELECT id FROM student WHERE name = 'James'), (SELECT id FROM subject WHERE name = 'Geography and history'), 9),
((SELECT id FROM student WHERE name = 'Jacob'), (SELECT id FROM subject WHERE name = 'PE and math'), 4),
((SELECT id FROM student WHERE name = 'Logan'), (SELECT id FROM subject WHERE name = 'PE and math'), 9);
-- insert more


-- insert more marks for students:
INSERT INTO mark (student_id, subject_id, mark) VALUES
((SELECT id FROM student WHERE name = 'Carl'), (SELECT id FROM subject WHERE name = 'Art and music'), 7),
((SELECT id FROM student WHERE name = 'Oliver'), (SELECT id FROM subject WHERE name = 'Science and IT'), 6),
((SELECT id FROM student WHERE name = 'Lucas'), (SELECT id FROM subject WHERE name = 'Science and IT'), 7),
((SELECT id FROM student WHERE name = 'Jacob'), (SELECT id FROM subject WHERE name = 'Science and IT'), 8),
((SELECT id FROM student WHERE name = 'Logan'), (SELECT id FROM subject WHERE name = 'Science and IT'), 9);