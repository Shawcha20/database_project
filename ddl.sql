drop table bill;
drop table cabin_room;
drop table nurse;
drop table doctor;
drop table recycle;
drop table patient;
drop table appointment;
drop table hospital;



-- hospital table
create table hospital (
hospital_id integer primary key,
hospital_name varchar2(100) unique not null,
hospital_address varchar2(100),
hospital_contact_no integer check (hospital_contact_no >10000000));


-- appointment table
create table appointment(
appointment_id integer primary key,
serial_number number(10) check (serial_number>=1),
appointment_date date not null,
hospital_id integer,
foreign key (hospital_id) references hospital (hospital_id)on delete cascade);


-- patient table
create table patient(
patient_id integer primary key,
patient_name varchar2(100) not null,
patient_gender varchar2(30) check (patient_gender in ('male' , 'female', 'other')),
patient_contact number(11) unique not null,
appointment_id integer not null,
foreign key (appointment_id) references appointment (appointment_id)
on delete cascade
);


-- doctor table
create table doctor(
doctor_id integer primary key, 
doctor_name varchar2(100) not null,
department varchar2(40) check ( department in('medicine', 'cardic', 'earnose')),
doctor_contact number(12),
doctor_fee number(20) not null,
patient_id integer not null,
extra_info varchar2(50) not null,
foreign key (patient_id) references patient ( patient_id) 
on delete cascade);


-- Nurse table
create table nurse(
nurse_id integer primary key,
nurse_name varchar2(50) not null,
nurse_desig varchar2(40) check (nurse_desig in ('regular', 'part_time')),
nurse_fee number(20) not null,
patient_id integer check ( patient_id>=1),
doctor_id integer check( doctor_id>=1), 
foreign key (patient_id) references patient ( patient_id),
foreign key ( doctor_id) references doctor (doctor_id)
);

-- table Bill
create table bill(
bill_no integer primary key,
bill_amount number(15) not null, 
issued_date date ,
patient_id integer not null,
appointment_id integer not null,
foreign key (patient_id) references patient (patient_id),
foreign key (appointment_id) references appointment(appointment_id));

-- table recycle
create table recycle(
r_id integer primary key,
patient_id integer not null,
patient_name varchar2(100) not null,
patient_gender varchar2(30) check (patient_gender in ('male' , 'female', 'other')),
patient_contact number(11) unique not null,
patient_age integer not null,
appointment_id integer not null
);

create table cabin(
room_no integer primary key,
PATIENT_ID INTEGER NOT NULL,
NURSE_ID INTEGER NOT NULL,
cabin_fee number not null,
FOREIGN KEY (PATIENT_ID) REFERENCES PATIENT (PATIENT_ID),
FOREIGN KEY (NURSE_ID) REFERENCES NURSE (NURSE_ID));
alter table patient add patient_age varchar2(50);
alter table recycle rename column r_id to recycle_id;
alter table patient modify patient_age integer;
alter table doctor drop column extra_info;