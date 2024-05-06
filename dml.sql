-- INSERTION  

-- Hospital insert
INSERT INTO hospital (hospital_id, hospital_name, hospital_address, hospital_contact_no) 
VALUES (1, 'Hospital_1', '47. New Bangladesh, Bangladesh', 123456789);

-- Appointment Insert
INSERT INTO appointment (appointment_id, serial_number, appointment_date, hospital_id) VALUES (1, 2, TO_DATE('05-OCT-2023', 'DD-MON-YYYY'), 1);
INSERT INTO appointment (appointment_id, serial_number, appointment_date, hospital_id) VALUES (2, 3, TO_DATE('06-OCT-2023', 'DD-MON-YYYY'), 1);
INSERT INTO appointment (appointment_id, serial_number, appointment_date, hospital_id) VALUES (3, 4, TO_DATE('07-OCT-2023', 'DD-MON-YYYY'), 1);
INSERT INTO appointment (appointment_id, serial_number, appointment_date, hospital_id) VALUES (4, 5, TO_DATE('08-OCT-2023', 'DD-MON-YYYY'), 1);
INSERT INTO appointment (appointment_id, serial_number, appointment_date, hospital_id) VALUES (5, 6, TO_DATE('09-OCT-2023', 'DD-MON-YYYY'), 1);
INSERT INTO appointment (appointment_id, serial_number, appointment_date, hospital_id) VALUES (6, 7, TO_DATE('10-OCT-2023', 'DD-MON-YYYY'), 1);
INSERT INTO appointment (appointment_id, serial_number, appointment_date, hospital_id) VALUES (7, 8, TO_DATE('11-OCT-2023', 'DD-MON-YYYY'), 1);
INSERT INTO appointment (appointment_id, serial_number, appointment_date, hospital_id) VALUES (8, 9, TO_DATE('12-OCT-2023', 'DD-MON-YYYY'), 1);
INSERT INTO appointment (appointment_id, serial_number, appointment_date, hospital_id) VALUES (9, 10, TO_DATE('13-OCT-2023', 'DD-MON-YYYY'), 1);
INSERT INTO appointment (appointment_id, serial_number, appointment_date, hospital_id) VALUES (10, 11, TO_DATE('14-OCT-2023', 'DD-MON-YYYY'), 1);
INSERT INTO appointment (appointment_id, serial_number, appointment_date, hospital_id) VALUES (11, 12, TO_DATE('15-OCT-2023', 'DD-MON-YYYY'), 1);
INSERT INTO appointment (appointment_id, serial_number, appointment_date, hospital_id) VALUES (12, 13, TO_DATE('16-OCT-2023', 'DD-MON-YYYY'), 1);
INSERT INTO appointment (appointment_id, serial_number, appointment_date, hospital_id) VALUES (13, 14, TO_DATE('17-OCT-2023', 'DD-MON-YYYY'), 1);
INSERT INTO appointment (appointment_id, serial_number, appointment_date, hospital_id) VALUES (14, 15, TO_DATE('18-OCT-2023', 'DD-MON-YYYY'), 1);
INSERT INTO appointment (appointment_id, serial_number, appointment_date, hospital_id) VALUES (15, 16, TO_DATE('19-OCT-2023', 'DD-MON-YYYY'), 1);
INSERT INTO appointment (appointment_id, serial_number, appointment_date, hospital_id) VALUES (16, 17, TO_DATE('20-OCT-2023', 'DD-MON-YYYY'), 1);
INSERT INTO appointment (appointment_id, serial_number, appointment_date, hospital_id) VALUES (17, 18, TO_DATE('21-OCT-2023', 'DD-MON-YYYY'), 1);
INSERT INTO appointment (appointment_id, serial_number, appointment_date, hospital_id) VALUES (18, 19, TO_DATE('22-OCT-2023', 'DD-MON-YYYY'), 1);
INSERT INTO appointment (appointment_id, serial_number, appointment_date, hospital_id) VALUES (19, 20, TO_DATE('23-OCT-2023', 'DD-MON-YYYY'), 1);
INSERT INTO appointment (appointment_id, serial_number, appointment_date, hospital_id) VALUES (20, 21, TO_DATE('24-OCT-2023', 'DD-MON-YYYY'), 1);
INSERT INTO APPOINTMENT VALUES (21, 22, TO_DATE('25-OCT-2023', 'DD-MON-YYYY'), 1);

-- Insert into patient
INSERT INTO patient (patient_id, patient_name, patient_gender, patient_contact, appointment_id) VALUES (1, 'John Doe', 'male', 1234567890, 1);
INSERT INTO patient (patient_id, patient_name, patient_gender, patient_contact, appointment_id) VALUES (2, 'Jane Smith', 'female', 9876543210, 2);
INSERT INTO patient (patient_id, patient_name, patient_gender, patient_contact, appointment_id) VALUES (3, 'Michael Johnson', 'male', 5554443333, 3);
INSERT INTO patient (patient_id, patient_name, patient_gender, patient_contact, appointment_id) VALUES (4, 'Emily Brown', 'female', 2223334444, 4);
INSERT INTO patient (patient_id, patient_name, patient_gender, patient_contact, appointment_id) VALUES (5, 'David Wilson', 'male', 1112223333, 5);
INSERT INTO patient (patient_id, patient_name, patient_gender, patient_contact, appointment_id) VALUES (6, 'Emma Davis', 'female', 9998887777, 6);
INSERT INTO patient (patient_id, patient_name, patient_gender, patient_contact, appointment_id) VALUES (7, 'Daniel Martinez', 'male', 7778889999, 7);
INSERT INTO patient (patient_id, patient_name, patient_gender, patient_contact, appointment_id) VALUES (8, 'Olivia Garcia', 'female', 6665554444, 8);
INSERT INTO patient (patient_id, patient_name, patient_gender, patient_contact, appointment_id) VALUES (9, 'James Rodriguez', 'male', 4445556666, 9);
INSERT INTO patient (patient_id, patient_name, patient_gender, patient_contact, appointment_id) VALUES (10, 'Sophia Hernandez', 'female', 3332221111, 10);
INSERT INTO patient (patient_id, patient_name, patient_gender, patient_contact, appointment_id) VALUES (11, 'William Smith', 'male', 9990001111, 11);
INSERT INTO patient (patient_id, patient_name, patient_gender, patient_contact, appointment_id) VALUES (12, 'Ava Johnson', 'female', 8887776666, 12);
INSERT INTO patient (patient_id, patient_name, patient_gender, patient_contact, appointment_id) VALUES (13, 'Alexander Brown', 'male', 7776665555, 13);
INSERT INTO patient (patient_id, patient_name, patient_gender, patient_contact, appointment_id) VALUES (14, 'Mia Davis', 'female', 6665554444, 14);
INSERT INTO patient (patient_id, patient_name, patient_gender, patient_contact, appointment_id) VALUES (15, 'Ethan Martinez', 'male', 5554443333, 15);
INSERT INTO patient (patient_id, patient_name, patient_gender, patient_contact, appointment_id) VALUES (16, 'Isabella Wilson', 'female', 4443332222, 16);
INSERT INTO patient (patient_id, patient_name, patient_gender, patient_contact, appointment_id) VALUES (17, 'Liam Rodriguez', 'male', 3332221111, 17);
INSERT INTO patient (patient_id, patient_name, patient_gender, patient_contact, appointment_id) VALUES (18, 'Charlotte Garcia', 'female', 2221110000, 18);
INSERT INTO patient (patient_id, patient_name, patient_gender, patient_contact, appointment_id) VALUES (19, 'Noah Smith', 'male', 1110009999, 19);
INSERT INTO patient (patient_id, patient_name, patient_gender, patient_contact, appointment_id) VALUES (20, 'Amelia Johnson', 'female', 9998887777, 20);
INSERT INTO patient (patient_id, patient_name, patient_gender, patient_contact, appointment_id) VALUES (21, 'MD.HAFIZ', 'male', 9998887577, 21);



-- INSERTION IN DOCTOR

	INSERT INTO doctor (doctor_id, doctor_name, department, doctor_contact, dotctor_fee, patient_id)
	VALUES 
	(1, 'Dr. Smith', 'medicine', 123456789, 100, 1);
	INSERT INTO DOCTOR VALUES
	(2, 'Dr. Johnson', 'cardic', 234567890, 120, 2);
	INSERT INTO DOCTOR VALUES
	(3, 'Dr. Williams', 'earnose', 345678901, 110, 3);
	INSERT INTO DOCTOR VALUES
	(4, 'Dr. Anderson', 'medicine', 456789012, 100, 4);
	INSERT INTO DOCTOR VALUES
	(5, 'Dr. Brown', 'cardic', 567890123, 120, 5);
	INSERT INTO DOCTOR VALUES
	(6, 'Dr. Davis', 'earnose', 678901234, 110, 6);
	INSERT INTO DOCTOR VALUES
	(7, 'Dr. Miller', 'medicine', 789012345, 100, 7);
	INSERT INTO DOCTOR VALUES
	(8, 'Dr. Wilson', 'cardic', 890123456, 120, 8);
	INSERT INTO DOCTOR VALUES
	(9, 'Dr. Moore', 'earnose', 901234567, 110, 9);
	INSERT INTO DOCTOR VALUES
	(10, 'Dr. Taylor', 'medicine', 912345678, 100, 10);
	INSERT INTO DOCTOR VALUES
	(11, 'Dr. Garcia', 'cardic', 123456789, 120, 11);
	INSERT INTO DOCTOR VALUES
	(12, 'Dr. Rodriguez', 'earnose', 234567890, 110, 12);
	INSERT INTO DOCTOR VALUES
	(13, 'Dr. Martinez', 'medicine', 345678901, 100, 13);
	INSERT INTO DOCTOR VALUES
	(14, 'Dr. Hernandez', 'cardic', 456789012, 120, 14);
	INSERT INTO DOCTOR VALUES
	(15, 'Dr. Lopez', 'earnose', 567890123, 110, 15);
	INSERT INTO DOCTOR VALUES
	(16, 'Dr. Gonzalez', 'medicine', 678901234, 100, 16);
	INSERT INTO DOCTOR VALUES
	(17, 'Dr. Perez', 'cardic', 789012345, 120, 17);
	INSERT INTO DOCTOR VALUES
	(18, 'Dr. Sanchez', 'earnose', 890123456, 110, 18);
	INSERT INTO DOCTOR VALUES
	(19, 'Dr. Torres', 'medicine', 901234567, 100, 19);
	INSERT INTO DOCTOR VALUES
	(20, 'Dr. Ramirez', 'cardic', 123456789, 120, 20);
	INSERT INTO DOCTOR VALUES
    (21, 'MD.HAFIZ','medicine',535363443, 230,21);
    
    
-- NURSE INSERTION
INSERT INTO nurse (nurse_id, nurse_name, nurse_desig, nurse_fee, patient_id, doctor_id)
VALUES
    (1, 'Nurse A', 'regular', 500, 1, 1);
INSERT INTO NURSE VALUES
    (2, 'Nurse B', 'regular', 550, 2, 2);
INSERT INTO NURSE VALUES
    (3, 'Nurse C', 'regular', 600, 3, 3);
INSERT INTO NURSE VALUES
    (4, 'Nurse D', 'part_time', 450, 4, 4);
INSERT INTO NURSE VALUES
    (5, 'Nurse E', 'part_time', 480, 5, 5);
INSERT INTO NURSE VALUES
    (6, 'Nurse F', 'regular', 520, 6, 6);
INSERT INTO NURSE VALUES
    (7, 'Nurse G', 'regular', 570, 7, 7);
INSERT INTO NURSE VALUES
    (8, 'Nurse H', 'part_time', 490, 8, 8);
INSERT INTO NURSE VALUES
    (9, 'Nurse I', 'regular', 530, 9, 9);
INSERT INTO NURSE VALUES
    (10, 'Nurse J', 'part_time', 460, 10, 10);
INSERT INTO NURSE VALUES
    (11, 'Nurse K', 'part_time', 470, 11, 11);
INSERT INTO NURSE VALUES
    (12, 'Nurse L', 'regular', 580, 12, 12);
INSERT INTO NURSE VALUES
    (13, 'Nurse M', 'regular', 540, 13, 13);
INSERT INTO NURSE VALUES
    (14, 'Nurse N', 'regular', 590, 14, 14);
INSERT INTO NURSE VALUES
    (15, 'Nurse O', 'part_time', 500, 15, 15);
INSERT INTO NURSE VALUES
    (16, 'Nurse P', 'part_time', 470, 16, 16);
INSERT INTO NURSE VALUES
    (17, 'Nurse Q', 'regular', 550, 17, 17);
INSERT INTO NURSE VALUES
    (18, 'Nurse R', 'regular', 600, 18, 18);
INSERT INTO NURSE VALUES
    (19, 'Nurse S', 'part_time', 480, 19, 19);
INSERT INTO NURSE VALUES
    (20, 'Nurse T', 'regular', 560, 20, 20);
    
-- Bill insertion
INSERT INTO bill (bill_no, bill_amount, issued_date, patient_id, appointment_id)
VALUES
    (1, 100, TO_DATE('2024-01-01', 'YYYY-MM-DD'), 1, 1),
    (2, 120, TO_DATE('2024-02-01', 'YYYY-MM-DD'), 2, 2),
    (3, 110, TO_DATE('2024-03-01', 'YYYY-MM-DD'), 3, 3),
    (4, 105, TO_DATE('2024-04-01', 'YYYY-MM-DD'), 4, 4),
    (5, 115, TO_DATE('2024-05-01', 'YYYY-MM-DD'), 5, 5),
    (6, 130, TO_DATE('2024-06-01', 'YYYY-MM-DD'), 6, 6),
    (7, 95, TO_DATE('2024-07-01', 'YYYY-MM-DD'), 7, 7),
    (8, 125, TO_DATE('2024-08-01', 'YYYY-MM-DD'), 8, 8),
    (9, 140, TO_DATE('2024-09-01', 'YYYY-MM-DD'), 9, 9),
    (10, 110, TO_DATE('2024-10-01', 'YYYY-MM-DD'), 10, 10),
    (11, 120, TO_DATE('2024-11-01', 'YYYY-MM-DD'), 11, 11),
    (12, 130, TO_DATE('2024-12-01', 'YYYY-MM-DD'), 12, 12),
    (13, 100, TO_DATE('2025-01-01', 'YYYY-MM-DD'), 13, 13),
    (14, 110, TO_DATE('2025-02-01', 'YYYY-MM-DD'), 14, 14),
    (15, 115, TO_DATE('2025-03-01', 'YYYY-MM-DD'), 15, 15),
    (16, 120, TO_DATE('2025-04-01', 'YYYY-MM-DD'), 16, 16),
    (17, 105, TO_DATE('2025-05-01', 'YYYY-MM-DD'), 17, 17),
    (18, 125, TO_DATE('2025-06-01', 'YYYY-MM-DD'), 18, 18),
    (19, 135, TO_DATE('2025-07-01', 'YYYY-MM-DD'), 19, 19),
    (20, 115, TO_DATE('2025-08-01', 'YYYY-MM-DD'), 20, 20);
    
    
-- CABIN INSERTION 
INSERT INTO cabin (room_no, PATIENT_ID, NURSE_ID, cabin_fee) VALUES
(1, 1, 1,300);
INSERT INTO CABIN VALUES
(2, 2, 2,400);
 INSERT INTO CABIN VALUES
(3, 3, 3,400);
 INSERT INTO CABIN VALUES
(4, 4, 4,400);
INSERT INTO CABIN VALUES    
(5, 5, 5,400);
 INSERT INTO CABIN VALUES   
(6, 6, 6,400);
INSERT INTO CABIN VALUES    
(7, 7, 7,400);
INSERT INTO CABIN VALUES    
(8, 8, 8,400);
INSERT INTO CABIN VALUES    
(9, 9, 9,400);
INSERT INTO CABIN VALUES    
(10, 10, 10.400);


-- QUERIES

-- update data into patient

update patient set patient_age = 22  where patient_id = 4;

-- delete data into maintenance

INSERT INTO CABIN VALUES (11,11,11);

delete from CABIN  where ROOM_NO=5;

-- Union, Intersection, Exception

-- UNION Combine patient names from 'patient' table and doctor names from 'doctor' table
SELECT patient_name as NAME FROM patient
UNION
SELECT doctor_name as NAME FROM doctor;

-- Intersection Find patients whose name matches with doctors
SELECT patient_name as common_name FROM patient
INTERSECT
SELECT doctor_name as common_name FROM doctor;


-- Exception

SELECT patient_id, patient_name
FROM patient
WHERE patient_id NOT IN (
    SELECT p.patient_id
    FROM patient p
    JOIN doctor d ON d.patient_id = p.patient_id
    WHERE d.department = 'medicine'
);


-- CLAUSE

SELECT patient_id, patient_name
FROM patient
WHERE patient_gender = 'male' 
AND patient_age > 20;


-- Aggregate

select count(*) from patient;
select count(doctor_name) as doctor_names  from doctor;
select count(distinct doctor_name) as doctor_names from doctor;
select avg(patient_age) from patient;
select sum(doctor_fee) from doctor;
select max(doctor_fee) from doctor;
select min(nurse_fee) from nurse;

-- Group by and HAVING

select department, avg(doctor_fee) from doctor group by department;
SELECT nurse_desig, SUM(nurse_fee) AS total_fee
FROM nurse
GROUP BY nurse_desig
HAVING SUM(nurse_fee) > (SELECT AVG(nurse_fee) FROM nurse);

-- Nested SUBQUERY

SELECT patient_id, patient_name
FROM patient
WHERE appointment_id = (
    SELECT appointment_id
    FROM appointment
    WHERE hospital_id IN (
        SELECT hospital_id
        FROM doctor
        WHERE department = 'medicine'
    )
);


-- Set Membership

-- AND

SELECT patient_name
FROM patient
JOIN appointment ON patient.appointment_id = appointment.appointment_id
WHERE patient_gender = 'male' AND appointment.appointment_date >= CURRENT_DATE;

-- OR
SELECT patient_name
FROM patient
LEFT JOIN appointment ON patient.appointment_id = appointment.appointment_id
WHERE patient_gender = 'male' OR appointment.appointment_date >= CURRENT_DATE;

-- NOT

SELECT patient_name
FROM patient
WHERE appointment_id IS NULL;

-- SOME

SELECT patient_name
FROM patient
JOIN appointment ON patient.appointment_id = appointment.appointment_id
JOIN doctor ON appointment.hospital_id = doctor.hospital_id
WHERE doctor.department = 'medicine';

-- ALL

SELECT patient_name
FROM patient
WHERE patient_age > ALL (
    SELECT patient_age
    FROM patient
    WHERE patient_gender = 'female'
);

-- Exists

SELECT patient_name
FROM patient p
WHERE EXISTS (
    SELECT 1
    FROM appointment a
    WHERE a.appointment_id = p.appointment_id
);

-- UNIQUE

-- Nowadays it is recommended to use distince instead of using unique

-- String Operations

select patient_name from patient where patient_name like '%E%';
select doctor_name from doctor where doctor_name like 'E%';
-- Join OPERATIONS

-- Natural JOIN
SELECT *
FROM patient
NATURAL JOIN doctor;

-- Inner JOIN

SELECT *
FROM patient
INNER JOIN doctor ON patient.patient_id = doctor.patient_id;


-- Left outer JOIN

SELECT *
FROM patient
LEFT OUTER JOIN doctor ON patient.patient_id = doctor.patient_id;


-- Right Outer JOIN

SELECT *
FROM patient
RIGHT OUTER JOIN doctor ON patient.patient_id = doctor.patient_id;


-- Full Outer JOIN

SELECT *
FROM patient
FULL OUTER JOIN doctor ON patient.patient_id = doctor.patient_id;


-- VIEWS
CREATE VIEW patient_view AS
SELECT patient_id, patient_name, patient_gender
FROM patient
WHERE patient_age > 20;



