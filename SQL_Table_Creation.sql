SET search_path TO DB1, public;

CREATE TABLE branch (
  branch_id SERIAL PRIMARY KEY,
  civic_number varchar(10) NOT NULL,
  street_name varchar(50) NOT NULL,
  city varchar(50) NOT NULL,
  province varchar(50) NOT NULL,
  postal_code varchar(6) NOT NULL
);




CREATE TABLE users (
  user_id SERIAL PRIMARY KEY,
  username varchar(50) NOT NULL UNIQUE,
  password varchar(50) NOT NULL
);


CREATE TABLE employee (
  employee_id SERIAL PRIMARY KEY,
  employee_type varchar(50) NOT NULL,

  --BASIC INFORMATION--
  first_name varchar(50) NOT NULL,
  middle_name varchar(50),
  last_name varchar(50) NOT NULL,
  date_of_birth DATE NOT NULL,
  gender varchar(1) NOT NULL,
  social_security_number varchar(9) NOT NULL UNIQUE,

  --ADDRESS--
  civic_number varchar(10) NOT NULL,
  street_name varchar(50) NOT NULL,
  city varchar(50) NOT NULL,
  province varchar(50) NOT NULL,
  postal_code varchar(6) NOT NULL,

  --CONTACT--
  phone_number varchar(10) NOT NULL,
  email_address varchar(100) NOT NULL,

  --BANKING--
  institution_number varchar(3),
  account_number varchar(12),
  salary money,

  manager_id integer REFERENCES employee(employee_id),
  branch_id integer REFERENCES branch(branch_id) NOT NULL,
  user_id integer REFERENCES users(user_id) NOT NULL
);



CREATE TABLE responsible_party (
  responsible_party_id SERIAL PRIMARY KEY NOT NULL UNIQUE,
  
  --BASIC INFORMATION--
  first_name varchar(50) NOT NULL,
  middle_name varchar(50),
  last_name varchar(50) NOT NULL,
  date_of_birth DATE NOT NULL,
  gender varchar(1) NOT NULL,
  social_security_number varchar(9) NOT NULL UNIQUE,
  insurance_number varchar(20) NOT NULL,

  --ADDRESS--
  civic_number varchar(10) NOT NULL,
  street_name varchar(50) NOT NULL,
  city varchar(50) NOT NULL,
  province varchar(50) NOT NULL,
  postal_code varchar(6) NOT NULL,

  --CONTACT--
  phone_number varchar(10) NOT NULL,
  email_address varchar(100) NOT NULL,
  
  user_id integer REFERENCES users(user_id)
);





CREATE TABLE patient (
  patient_id SERIAL PRIMARY KEY,
  
  --BASIC INFORMATION--
  first_name varchar(50) NOT NULL,
  middle_name varchar(50),
  last_name varchar(50) NOT NULL,
  date_of_birth DATE NOT NULL,
  gender varchar(1) NOT NULL,
  social_security_number varchar(9) NOT NULL UNIQUE,
  insurance_number varchar(20) NOT NULL,

  --ADDRESS--
  civic_number varchar(10) NOT NULL,
  street_name varchar(50) NOT NULL,
  city varchar(50) NOT NULL,
  province varchar(50) NOT NULL,
  postal_code varchar(6) NOT NULL,

  --CONTACT--
  phone_number varchar(10) NOT NULL,
  email_address varchar(100) NOT NULL,
  
  user_id integer REFERENCES users(user_id),
  responsible_party_id integer REFERENCES responsible_party(responsible_party_id)
);






CREATE TABLE review (
  review_id SERIAL PRIMARY KEY,
  
  professionalism integer CONSTRAINT professionalism_range_check CHECK(int4range(0, 5, '[]') @> professionalism),
  cleanliness integer CONSTRAINT cleanliness_range_check CHECK(int4range(0, 5, '[]') @> cleanliness),
  communication integer CONSTRAINT communication_range_check CHECK(int4range(0, 5, '[]') @> communication),
  value integer CONSTRAINT value_range_check CHECK(int4range(0, 5, '[]') @> value),
  
  patient_id integer REFERENCES patient(patient_id) NOT NULL, 
  branch_id integer REFERENCES branch(branch_id) NOT NULL

);

CREATE TABLE procedure (
  procedure_id SERIAL PRIMARY KEY,
  procedure_code varchar(5) NOT NULL,
  procedure_type varchar(50) NOT NULL,
  procedure_description text NOT NULL

);

CREATE TABLE fee_charge ( 

    fee_id SERIAL PRIMARY KEY, 
    fee_code INTEGER NOT NULL, 
    charge money NOT NULL, 
    procedure_id INTEGER REFERENCES procedure(procedure_id)


);








CREATE TABLE appointment (
	appointment_id SERIAL PRIMARY KEY, 
	date DATE NOT NULL, 
	start_time time NOT NULL, 
	end_time time NOT NULL,
	appointment_type TEXT NOT NULL, 
	room_number VARCHAR(2) NOT NULL, 
	status TEXT, 
	patient_id INTEGER REFERENCES patient(patient_id) NOT NULL, 
	employee_id INTEGER REFERENCES employee(employee_id) NOT NULL
);


CREATE TABLE insurance_claim (

    claim_id SERIAL PRIMARY KEY,
    date DATE NOT NULL, 
    institution VARCHAR(3) NOT NULL, 
    insurance_nbr VARCHAR(20) NOT NULL, 
    patient_id INTEGER REFERENCES patient(patient_id) NOT NULL


);


CREATE TABLE invoice(

    invoice_id SERIAL PRIMARY KEY, 
    date DATE NOT NULL, 
    employee_service_fee money NOT NULL,
    patient_fee money, 
    insurance_fee money, 
    discount money, 
    penalty money, 
    total_fee money, 
    claim_id INTEGER REFERENCES insurance_claim(claim_id),
    patient_id INTEGER REFERENCES patient(patient_id) NOT NULL

);



CREATE TABLE appointment_procedure (

    appointment_procedure_id SERIAL PRIMARY KEY, 
    date DATE NOT NULL, 
    teeth TEXT, 
    material_used TEXT,
    procedure_amount INTEGER NOT NULL,
    procedure_id INTEGER REFERENCES procedure(procedure_id) NOT NULL,
    patient_id INTEGER REFERENCES patient(patient_id) NOT NULL,
    appointment_id INTEGER REFERENCES appointment(appointment_id) NOT NULL,
    invoice_id INTEGER REFERENCES invoice(invoice_id) NOT NULL
);










CREATE TABLE treatment(

    treatment_id SERIAL PRIMARY KEY, 
    diagnosis TEXT, 
    symptoms TEXT,
    teeth TEXT NOT NULL, 
    treatment TEXT NOT NULL, 
    medications TEXT, 
    comments TEXT, 
    appointment_id INTEGER REFERENCES appointment(appointment_id) NOT NULL
);





CREATE TABLE bill(
  
	bill_id SERIAL PRIMARY KEY,  
	payment_method TEXT NOT NULL,
	card_number varchar(16),
	patient_portion money, 
	insurance_portion money, 
	total_amount money NOT NULL, 
	appointment_id INTEGER REFERENCES appointment(appointment_id) NOT NULL,
	invoice_id INTEGER REFERENCES invoice(invoice_id) NOT NULL,
	claim_id INTEGER REFERENCES insurance_claim(claim_id)
	
);
