-- PL/SQL

SET SERVEROUTPUT ON
DECLARE 
  my_variable VARCHAR2(100); 

BEGIN 
  my_variable := 'Hello, PL/SQL!'; 

  DBMS_OUTPUT.PUT_LINE(my_variable); 
END;
/

-- Insert and DELETE
declare
    hospital_id hospital.hospital_id%type := 9;
    hospital_name hospital.hospital_name%type := 'rokona1';
    hospital_address hospital.hospital_address%type := 'kuet23';
    hospital_contact_no hospital.hospital_contact_no%type := 12309657565;
begin      
        insert into hospital (hospital_id, hospital_name, hospital_address, hospital_contact_no)
        values (hospital_id, hospital_name, hospital_address, hospital_contact_no);	
        dbms_output.put_line('Data inserted successfully.');
        DELETE FROM hospital WHERE hospital_id = 8;
        dbms_output.put_line('data deleted successfully');
end;
/


-- Displaying the patient table data
	declare 
	cursor patient_cursor is select * from patient;
	patient_row patient%rowtype;
	begin
	open patient_cursor;
	fetch patient_cursor into patient_row;
	while patient_cursor%found loop
	dbms_output.put_line(patient_row.patient_name||patient_row.patient_age|| patient_row.patient_id);
	fetch patient_cursor into patient_row;
	end loop;
    close patient_cursor;
	end;
	/
-- display the details of a patient
CREATE OR REPLACE PROCEDURE get_patient_info(
    p_patient_id IN INTEGER
)
IS
    p_name patient.patient_name%TYPE;
    p_gender patient.patient_gender%TYPE;
    p_age patient.patient_age%TYPE;
    p_ap_id patient.appointment_id%TYPE;
BEGIN
    SELECT patient_name, patient_gender, patient_age, appointment_id
    INTO p_name, p_gender, p_age, p_ap_id
    FROM patient
    WHERE patient_id = p_patient_id;

    DBMS_OUTPUT.PUT_LINE('Patient ID: ' || p_patient_id);
    DBMS_OUTPUT.PUT_LINE('Name: ' || p_name);
    DBMS_OUTPUT.PUT_LINE('Gender: ' || p_gender);
    DBMS_OUTPUT.PUT_LINE('Age: ' || p_age);
    DBMS_OUTPUT.PUT_LINE('Appointment ID: ' || p_ap_id);
END get_patient_info;
/


begin
get_patient_info(1);
end;
/


-- Display the list of doctor details of a department by input of the department name:

CREATE OR REPLACE PROCEDURE get_doctors_in_department(
    p_department_name IN VARCHAR2
)
IS
BEGIN
    FOR doctor_rec IN (
        SELECT doctor_id, doctor_name, department, doctor_contact, doctor_fee
        FROM doctor
        WHERE department = p_department_name
    ) LOOP
        DBMS_OUTPUT.PUT_LINE('Doctor ID: ' || doctor_rec.doctor_id);
        DBMS_OUTPUT.PUT_LINE('Doctor Name: ' || doctor_rec.doctor_name);
        DBMS_OUTPUT.PUT_LINE('Department: ' || doctor_rec.department);
        DBMS_OUTPUT.PUT_LINE('Contact: ' || doctor_rec.doctor_contact);
        DBMS_OUTPUT.PUT_LINE('Fee: ' || doctor_rec.doctor_fee);
        DBMS_OUTPUT.PUT_LINE('------------------------------------');
    END LOOP;
    
    EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No doctors found in ' || p_department_name);
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error occurred: ' || SQLERRM);
END get_doctors_in_department;
/


DECLARE
    v_department_name VARCHAR2(100) := 'medicine'; -- Specify the department name

BEGIN
    get_doctors_in_department(p_department_name => v_department_name);
END;
/

-- Display the doctor details using function inputting the doctor_id

CREATE OR REPLACE FUNCTION get_doctor_details(
    p_doctor_id IN INTEGER
)
RETURN VARCHAR2
IS
    v_details VARCHAR2(4000); -- Adjust the size as per your requirement
BEGIN
    SELECT 'Doctor ID: ' || doctor_id || ', Doctor Name: ' || doctor_name || ', Department: ' || department || ', Contact: ' || doctor_contact || ', Fee: ' || doctor_fee
    INTO v_details
    FROM doctor
    WHERE doctor_id = p_doctor_id;

    RETURN v_details;

    EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'No doctor found with ID: ' || p_doctor_id;
    WHEN OTHERS THEN
        RETURN 'Error occurred: ' || SQLERRM;
END get_doctor_details;
/

DECLARE
    v_doctor_id INTEGER := 123; -- Specify the doctor ID you want to retrieve details for
    v_doctor_details VARCHAR2(4000);

BEGIN
    v_doctor_details := get_doctor_details(p_doctor_id => v_doctor_id);
    DBMS_OUTPUT.PUT_LINE(v_doctor_details);
END;
/

-- Display the total cost of a patient using procedure 

CREATE OR REPLACE PROCEDURE calculate_total_cost(
    p_patient_id IN INTEGER,
    p_total_cost OUT NUMBER
)
IS
temp_cost number;
BEGIN
    SELECT SUM(doctor_fee)
    INTO p_total_cost
    FROM doctor
    WHERE patient_id = p_patient_id;
      temp_cost:=p_total_cost;
    select sum(nurse_fee)
    into p_total_cost from NURSE 
    where patient_id= p_patient_id;
    temp_cost:=temp_cost+p_total_cost;
    select sum(cabin_fee) into p_total_cost from cabin where patient_id= p_patient_id;
    temp_cost:=temp_cost+p_total_cost;
    p_total_cost:=temp_cost;
    EXCEPTION
    WHEN NO_DATA_FOUND THEN
        p_total_cost := 0; -- If no data found, set total cost to 0
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error occurred: ' || SQLERRM);
        p_total_cost := NULL; -- If any other error occurs, set total cost to NULL
END calculate_total_cost;
/

-- After deleting or updating some data of the patient it will automatically store in the recycle table

CREATE OR REPLACE TRIGGER recycle_patient_trigger
AFTER DELETE OR UPDATE ON patient
FOR EACH ROW
BEGIN
    IF DELETING THEN
        INSERT INTO recycle (r_id, patient_id, patient_name, patient_gender, patient_contact, patient_age, appointment_id)
        VALUES (:OLD.patient_id, :OLD.patient_id, :OLD.patient_name, :OLD.patient_gender, :OLD.patient_contact, :OLD.patient_age, :OLD.appointment_id);
    ELSE
        INSERT INTO recycle (r_id, patient_id, patient_name, patient_gender, patient_contact, patient_age, appointment_id)
        VALUES (:OLD.patient_id, :OLD.patient_id, :OLD.patient_name, :OLD.patient_gender, :OLD.patient_contact, :OLD.patient_age, :OLD.appointment_id);
    END IF;
END;
/
