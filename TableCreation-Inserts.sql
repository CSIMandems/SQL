
CREATE TABLE branch (
  branch_id SERIAL PRIMARY KEY,
  civic_number varchar(10) NOT NULL,
  street_name varchar(50) NOT NULL,
  city varchar(50) NOT NULL,
  province varchar(50) NOT NULL,
  postal_code varchar(6) NOT NULL
);

INSERT INTO Branch (civic_number, street_name, city, province, postal_code)

VALUES
(486,'Montreal Rd','Ottawa','Ontario','D9Y2W6'),
(54,'Saint Laurent Blvd','Ottawa','Ontario','K3F9T6'),
(984,'Rideau St','Ottawa','Ontario','E9U3Q5'),

(18,'Anyplace Drive','Montreal','Quebec','A6U8V5'),
(9875,'Nowhere Lane','Montreal','Quebec','D5H2V1'),
(658,'Overthere Way','Montreal','Quebec','S2R9N5'),

(352,'Donald St','Toronto','Ontario','A6U8V5'),
(5,'Aviation Parkway','Toronto','Ontario','D5H2V1'),
(45823,'Thorncliffe','Toronto','Ontario','S2R9N5');





CREATE TABLE users (
  user_id SERIAL PRIMARY KEY,
  username varchar(50) NOT NULL UNIQUE,
  password varchar(50) NOT NULL
);


INSERT INTO Users (username, password)

VALUES 
-- 		EMPLOYEES		--
-- BRANCH  1
('Lily Ingram','password'),
('Deon Phillips','password'),
('Kevin Mcdaniel','password'),
('Lindsay Benson','password'),

-- BRANCH  4
('Felicity Booker','password'),
('Blaine Mcgee','password'),
('Emery Richards','password'),
('Kasen Solis','password'),

-- BRANCH  7
('Diana Gilmore','password'),
('Jayden Haney','password'),
('Nylah Mcclain','password'),
('Jackson Cobb','password'),

-- BRANCH  2
('Rylie Hess','password'),
('Aubrey Wells','password'),
('Ramiro Duncan','password'),
('Reagan Preston','password'),

-- BRANCH  3
('Madyson Hull','password'),
('Gabrielle Ramirez','password'),
('Markus Hodges','password'),
('Ryker Sanchez','password'),

-- BRANCH  5
('Zander Ponce','password'),
('Armani Lozano','password'),
('Jaelynn Wolf','password'),
('Kendal Ali','password'),

-- BRANCH  6
('Avery Figueroa','password'),
('Carson Spence','password'),
('Andrew Russell','password'),
('Esteban Dillon','password'),
-- BRANCH  8
('Karley Le','password'),
('Jadiel Parrish','password'),
('Laura Salazar','password'),
('Emilie Knapp','password'),
-- BRANCH  9
('Dylan Barrera','password'),
('Braiden Ward','password'),
('Quinn Montes','password'),


--		Patients	--
-- BRANCH  1
('Roy Colon','password'),
('Jaelyn Owens','password'),
('Clara Wu','password'),

-- BRANCH  4
('Octavio Dudley','password'),
('Melina Yu','password'),
('Marlee Roman','password'),

-- BRANCH  7
('Thomas Stevens','password'),
('Lilianna Perez','password'),
('Elisabeth Dalton','password'),

-- BRANCH  2
('Diego Burnett','password'),
-- BRANCH  5
('Diego Hernandez','password'),
-- BRANCH  6
('Kingston Foley','password'),
-- BRANCH  3
('Catalina Bray','password'),
-- BRANCH  8
('Zachery Miles','password'),
-- BRANCH  9
('Laurel Jennings','password'),


-- ALL FAMILIES IN BRANCH 1
--FAMILY#1 regular family, all same address all patients
('Evan Harrington','password'),
('Cheyanne Harrington','password'),
('Malcolm Harrington','password'),
('Alison Harrington','password'),


--FAMILY #2 regular family, all same address, all patients
('Katelyn Terry','password'),
('Tyler Terry','password'),
('Kale Terry','password'),


--FAMILY #3 kid is a patient but parent is responsible party
('Roberto Hoffman','password'),
('Briley Hoffman','password');



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
INSERT INTO employee (employee_type, first_name, middle_name, last_name, date_of_birth, gender, social_security_number, civic_number, street_name, city, province, postal_code, phone_number, email_address, institution_number, account_number, salary, manager_id, branch_id, user_id)


VALUES
-- BRANCH DETAILS -- (001,486,'Montreal Rd','Ottawa','Ontario','D9Y2W6') 
('Dentist','Lily',NULL,'Ingram','1966-01-01','F',570271493,12,'Rosemary Lane','Ottawa','Ontario','D9Y6D5',6133317753,'Lily.Ingram@dentist.com',349,286214123141,'$60.00',NULL,1,1),
('Manager','Deon','Michael','Phillips','1987-08-24','M',823878518,56,'Lavender Drive','Ottawa','Ontario','D9Y5F2',6132611739,'Deon.M.Phillips@manager.com',584,651164639864,'$40.00',NULL,1,2),
('Receptionist','Kevin',NULL,'Mcdaniel','1986-07-21','M',265318549,'57 Unit 6','Thyme Avenue','Ottawa','Ontario','D9Y5D9','6137669055','Kevin.Mcdaniel@Receptionist.com',283,279025691488,'$30.00',2,1,3),
('Hygienist','Lindsay',NULL,'Benson','1983-04-14','F',237575328,78,'Coriander Circle','Ottawa','Ontario','D9Y2R3','6135733638','Lindsay.Benson@hygenist.com',821,363386740842,'$30.00',2,1,4),

-- BRANCH DETAILS -- (004,18,'Anyplace Drive','Montreal','Quebec','A6U8V5'),
('Dentist',		'Felicity',NULL,'Booker',	'1968-01-05','F',644818688,1410,	'Rose Ave',			'Montreal','Quebec','A6U9D2',	5141928801,		'Felicity.Booker@dentist.com',			513,511665382754,'$60.00',NULL,	4,5),
('Manager',		'Blaine',NULL,'Mcgee',	'1977-04-14','M',751428448,589,		'Lilac Lane',		'Montreal','Quebec','A6U3H5',	5141078812,		'Blaine.Mcgee@manager.com',			976,325373177026,'$40.00',NULL,	4,6),
('Receptionist','Emery',NULL,'Richards',	'1983-06-16','M',846533586,'648-B89',	'Lily Circle',	'Montreal','Quebec','A6UQ2U',	5149684458,		'Emery.Richards@receptionist.com',	168,942059846868,'$30.00',6,	4,7),
('Hygienist',	'Kasen',NULL,'Solis',	'1993-07-21','M',809823770,183,		'Orchid Way',		'Montreal','Quebec','A6UH9K',	5142439780,		'Kasen.Solis@hygenist.com',		258,697895399617,'$30.00',6,	4,8);


--	-- BRANCH DETAILS	-- (007,352,'Donald St','Toronto','Ontario','A6U8V5'),
('Dentist',		'Diana ',NULL,'Gilmore',			'1978-08-08',	'F',762099689,		'658',			'Cow Court',		'Toronto',	'Ontario',	'A6U3D9',	4163367249,		'Diana.Gilmore@dentist.com',					491,816925793256,'$60.00',		NULL,7,9),							
('Manager',		'Jayden',NULL,'Haney',				'1994-06-24',	'F',554674883,		'5952',			'Lamb Lane',		'Toronto',	'Ontario',	'A6UQ8H',	4165431601,		'Jayden.Haney@manager.com',						201,905674814363,'$40.00',		NULL,7,10),
('Receptionist',	'Nylah',NULL,'Mcclain',				'1992-01-28',	'F',714757933,		'13',			'Goat Crescent',	'Toronto',	'Ontario',	'A6UC2G',	4160612015,		'Nylah.Mcclain@receptionist.com',				735,013824160654,'$30.00',		10,7,11),
('Hygienist',		'Jackson',NULL,'Cobb',				'1993-12-19',	'M',342584474,		'285',			'Chicken Road',		'Toronto',	'Ontario',	'A6UB4Y',	4160330932,		'Jackson.Cobb@hygenist.com',					957,828477608483,'$30.00',		10,7,12);



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
INSERT INTO responsible_party (first_name, middle_name, last_name, date_of_birth, gender, social_security_number, insurance_number, civic_number, street_name, city, province, postal_code, phone_number, email_address, user_id)

VALUES

---- (52,'Cheyanne Harrington')<-RP for kids -- insert into rp first
---- (55,'Katelyn Terry')<-RP for kids -- insert into RP first
('Cheyanne',NULL,'Harrington'	,'1990-06-14','F',425844905,31242080627392556735,26,'Mother Lane'		,'Ottawa','Ontario','D9Y3H4',6132413174,'Cheyanne.Harrington@responsibleparty.com'	,52),
('Katelyn','Brooke','Terry'	,'1991-12-18','F',790084336,87161421096627391973,469,'Stepmother Way'	,'Ottawa','Ontario','D9Y2R9',6135809128,'Katelyn.Terry@responsibleparty.com'		,55),
('Roberto',NULL,'Hoffman'			,'1968-03-23','M',169167110,59256175755916609149,596,'Father Way'		,'Ottawa','Ontario','D9Y5T8',6137941753,'Roberto.Hoffman@responsibleparty.com'		,58);





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

NSERT INTO patient (first_name, middle_name, 
last_name, date_of_birth, gender, social_security_number, insurance_number, civic_number, street_name, city, province, postal_code, phone_number, email_address, user_id, responsible_party_id)

VALUES

('Roy',NULL,'Colon',		'1965-05-17','M',683401662,90489026346815766588,56	,'Hotsauce Drive',	'Ottawa','Ontario','D9Y6D5',6133724404,'Roy.Colon@patient.com',36,NULL),
('Jaelyn',NULL,'Owens',	'1986-06-25','M',797638725,86897145633155104943,235	,'Ghostpepper Road','Ottawa','Ontario','D9Y7J6',6130365226,'Jaelyn.Owens@patient.com',37,NULL),
('Clara',NULL,'Wu',		'1978-02-20','F',487131841,98370934436219627481,7861,'Chili Circle',	'Ottawa','Ontario','D9Y2E9',6133298619,'Clara.Wu@patient.com',38,NULL),



-- -- ALL FAMILIES IN BRANCH 1
-- --FAMILY#1 regular family, all same address all patients, all same insurance
-- (51,'Evan Harrington')
-- (52,'Cheyanne Harrington')<-RP for kids -- insert into rp first // done
--RP :(RP ID : 1,'Cheyanne',NULL,'Harrington'	,'1990-06-14','F',425844905,31242080627392556735,26,'Mother Lane'		,'Ottawa','Ontario','D9Y3H4',6132413174,'Cheyanne.Harrington@responsibleparty.com'	,52),
-- (53,'Malcolm Harrington')
-- (54,'Alison Harrington')

('Evan',NULL,	'Harrington','1980-12-18','M',790468518,31242080627392556735,26,'Mother Lane'		,'Ottawa','Ontario','D9Y3H4',6132413174,'Evan.Harrington@patient.com'	,51,NULL),
('Cheyanne',NULL,	'Harrington','1990-06-14','F',425844905,31242080627392556735,26,'Mother Lane'		,'Ottawa','Ontario','D9Y3H4',6132413174,'Cheyanne.Harrington@responsibleparty.com'	,52,NULL),
('Malcolm',NULL,	'Harrington','2000-08-24','M',407822169,31242080627392556735,26,'Mother Lane'		,'Ottawa','Ontario','D9Y3H4',6132413174,'Malcolm.Harrington@patient.com'	,53,1),
('Alison',NULL,	'Harrington','2003-02-11','F',988603286,31242080627392556735,26,'Mother Lane'		,'Ottawa','Ontario','D9Y3H4',6132413174,'Alison.Harrington@patient.com'	,54,1),


-- --FAMILY #2 regular family, all different address for kids (ie divorced or adopted kids or something idk , stepmother is taking the kids to dentist, thus the kids have seperate mailing addresses, but stepmother is the rp at the dentist, and they are under her insurance)
-- (55,'Katelyn Terry')<-RP for kids -- insert into RP first // done
--RP : -- (RP ID : 2,'Katelyn','Brooke','Terry'	,'1991-12-18','F',790084336,87161421096627391973,469,'Stepmother Way'	,'Ottawa','Ontario','D9Y2R9',6135809128,'Katelyn.Terry@responsibleparty.com'		,55);
-- (56,'Tyler Terry')
-- (57,'Kale Terry')
('Katelyn','Brooke','Terry'	,	'1991-12-18','F',	790084336,87161421096627391973,469,'Stepmother Way'	,'Ottawa','Ontario','D9Y2R9',6135809128,'Katelyn.Terry@responsibleparty.com'		,55,NULL),
('Tyler',NULL,'Terry'	,			'2004-01-13','M',	637701900,87161421096627391973,34,'Not Stepmother Way'	,'Ottawa','Ontario','D9Y6R3',6135370356,'Tyler.Terry@patient.com'		,56,2),
('Kale',NULL,'Terry'	,			'2007-02-21','M',	601247645,87161421096627391973,34,'Not Stepmother Way'	,'Ottawa','Ontario','D9Y6R3',6135370356,'Kale.Terry@patient.com'		,57,2),



-- --FAMILY #3 kid is a patient but parent is responsible party and is not a patient
-- (58,'Roberto Hoffman')<-RP for kid, is not a patient // done
-- RP : --(3,'Roberto',NULL,'Hoffman'			,'1968-03-23','M',169167110,59256175755916609149,596,'Father Way'		,'Ottawa','Ontario','D9Y5T8',6137941753,'Roberto.Hoffman@responsibleparty.com'		,58);
-- (59,'Briley Hoffman')


('Briley','Dustan','Hoffman'			,'2001-09-11','M',585006823,59256175755916609149,596,'Father Way'		,'Ottawa','Ontario','D9Y5T8',6137941753,'Briley.D.Hoffman@patient.com'		,59,3);






CREATE TABLE review (
  review_id SERIAL PRIMARY KEY,
  
  professionalism integer CONSTRAINT professionalism_range_check CHECK(int4range(0, 5, '[]') @> professionalism),
  cleanliness integer CONSTRAINT cleanliness_range_check CHECK(int4range(0, 5, '[]') @> cleanliness),
  communication integer CONSTRAINT communication_range_check CHECK(int4range(0, 5, '[]') @> communication),
  value integer CONSTRAINT value_range_check CHECK(int4range(0, 5, '[]') @> value),
  
  patient_id integer REFERENCES patient(patient_id) NOT NULL, 
  branch_id integer REFERENCES branch(branch_id) NOT NULL

);

INSERT INTO review(professionalism,cleanliness,communication,value,patient_id,branch_id) VALUES 

( 3 , 4 , 4 , 5 , 7 , 4 ) ,

( 1 , 1 , 1 , 4 , 8 , 4 ) ,

( 5 , 5 , 2 , 3 , 6 , 6 ) ,

( 1 , 4 , 2 , 2 , 9 , 5 ) ,

( 1 , 1 , 3 , 4 , 11 , 8 ) ,

( 1 , 4 , 2 , 4 , 11 , 6 ) ,

( 5 , 1 , 3 , 1 , 8 , 6 ) ,

( 5 , 1 , 1 , 1 , 6 , 5 ) ,

( 1 , 5 , 2 , 4 , 8 , 3 ) ,

( 4 , 3 , 3 , 5 , 6 , 2 ) ,

( 1 , 4 , 2 , 4 , 11 , 4 ) ,

( 5 , 3 , 2 , 5 , 6 , 5 ) ,

( 4 , 1 , 1 , 5 , 3 , 3 ) ,

( 1 , 3 , 2 , 3 , 4 , 3 ) ,

( 4 , 3 , 4 , 2 , 10 , 4 ) ,

( 1 , 4 , 1 , 5 , 11 , 2 ) ,

( 5 , 3 , 2 , 2 , 7 , 4 ) ,

( 1 , 1 , 3 , 1 , 9 , 3 ) ,

( 4 , 4 , 2 , 2 , 7 , 4 ) ,

( 4 , 2 , 4 , 1 , 1 , 9 ) ,

( 3 , 4 , 5 , 5 , 1 , 4 ) ,

( 1 , 2 , 1 , 4 , 10 , 5 ) ,

( 3 , 4 , 3 , 4 , 5 , 6 ) ,

( 4 , 4 , 1 , 1 , 3 , 8 ) ,

( 5 , 4 , 4 , 3 , 1 , 9 ) ,

( 4 , 3 , 4 , 1 , 10 , 9 ) ,

( 5 , 3 , 4 , 1 , 4 , 5 ) ,

( 2 , 2 , 1 , 3 , 2 , 4 ) ,

( 4 , 1 , 1 , 5 , 9 , 4 ) ,

( 1 , 4 , 1 , 4 , 4 , 6 ) ,

( 5 , 5 , 4 , 5 , 5 , 7 ) ,

( 4 , 5 , 5 , 2 , 7 , 4 ) ,

( 2 , 5 , 5 , 4 , 8 , 9 ) ,

( 1 , 4 , 4 , 4 , 1 , 6 ) ,

( 3 , 1 , 3 , 1 , 4 , 4 ) ,

( 5 , 4 , 4 , 5 , 6 , 6 ) ,

( 4 , 4 , 5 , 4 , 1 , 5 ) ,

( 1 , 4 , 3 , 5 , 1 , 1 ) ,

( 3 , 4 , 1 , 3 , 4 , 5 ) ,

( 1 , 1 , 3 , 4 , 1 , 7 ) ,

( 5 , 5 , 5 , 3 , 7 , 9 ) ,

( 2 , 3 , 4 , 1 , 8 , 4 ) ,

( 5 , 1 , 3 , 2 , 10 , 1 ) ,

( 4 , 2 , 1 , 3 , 4 , 2 ) ,

( 1 , 2 , 4 , 5 , 5 , 6 ) ,

( 3 , 1 , 3 , 4 , 4 , 7 ) ,

( 2 , 2 , 3 , 2 , 11 , 4 ) ,

( 5 , 3 , 2 , 5 , 3 , 7 ) ,

( 2 , 5 , 4 , 2 , 1 , 6 ) ,

( 2 , 5 , 3 , 5 , 4 , 4 ) ,

( 1 , 2 , 5 , 5 , 5 , 2 ) ,

( 5 , 5 , 5 , 5 , 4 , 3 ) ,

( 1 , 3 , 4 , 2 , 8 , 7 ) ,

( 5 , 1 , 3 , 2 , 1 , 5 ) ,

( 2 , 3 , 1 , 5 , 5 , 1 ) ,

( 2 , 5 , 5 , 4 , 9 , 2 ) ,

( 4 , 3 , 4 , 1 , 10 , 3 ) ,

( 1 , 5 , 2 , 1 , 4 , 5 ) ,

( 1 , 5 , 5 , 5 , 4 , 6 ) ,

( 4 , 3 , 4 , 2 , 5 , 7 ) ,

( 4 , 2 , 4 , 4 , 7 , 9 ) ,

( 4 , 5 , 2 , 1 , 3 , 5 ) ,

( 2 , 2 , 3 , 4 , 3 , 5 ) ,

( 2 , 4 , 1 , 3 , 7 , 2 ) ,

( 5 , 5 , 5 , 1 , 7 , 8 ) ,

( 5 , 3 , 1 , 1 , 2 , 6 ) ,

( 1 , 2 , 5 , 4 , 10 , 5 ) ,

( 4 , 2 , 2 , 5 , 5 , 9 ) ,

( 5 , 2 , 3 , 3 , 1 , 8 ) ,

( 2 , 5 , 1 , 1 , 5 , 1 ) ,

( 1 , 3 , 4 , 3 , 4 , 5 ) ,

( 5 , 4 , 3 , 4 , 6 , 9 ) ,

( 2 , 4 , 5 , 3 , 2 , 6 ) ,

( 2 , 2 , 3 , 5 , 11 , 4 ) ,

( 3 , 2 , 1 , 1 , 5 , 4 ) ,

( 3 , 2 , 5 , 2 , 3 , 5 ) ,

( 1 , 2 , 3 , 3 , 8 , 1 ) ,

( 3 , 5 , 2 , 2 , 8 , 8 ) ,

( 5 , 2 , 1 , 4 , 1 , 2 ) ,

( 5 , 2 , 3 , 4 , 3 , 3 ) ,

( 3 , 3 , 2 , 4 , 7 , 2 ) ,

( 2 , 4 , 4 , 5 , 8 , 7 ) ,

( 5 , 4 , 5 , 5 , 10 , 3 ) ,

( 3 , 1 , 4 , 5 , 8 , 1 ) ,

( 2 , 4 , 1 , 3 , 10 , 1 ) ,

( 1 , 2 , 3 , 5 , 5 , 7 ) ,

( 3 , 5 , 5 , 2 , 4 , 4 ) ,

( 4 , 2 , 1 , 3 , 1 , 5 ) ,

( 4 , 5 , 2 , 4 , 10 , 7 ) ,

( 5 , 4 , 4 , 3 , 1 , 6 ) ,

( 4 , 2 , 2 , 5 , 6 , 8 ) ,

( 1 , 1 , 2 , 4 , 3 , 5 ) ,

( 5 , 1 , 4 , 2 , 11 , 6 ) ,

( 3 , 3 , 5 , 5 , 1 , 5 ) ,

( 3 , 4 , 3 , 2 , 5 , 7 ) ,

( 5 , 4 , 2 , 1 , 1 , 6 ) ,

( 4 , 3 , 3 , 1 , 7 , 5 ) ,

( 1 , 4 , 1 , 5 , 7 , 3 ) ,

( 3 , 1 , 3 , 2 , 9 , 9 ) ,

( 4 , 4 , 1 , 3 , 7 , 8 ) ,

( 3 , 3 , 3 , 3 , 11 , 6 ) ,

( 2 , 1 , 5 , 5 , 1 , 3 ) ,

( 3 , 3 , 1 , 2 , 6 , 4 ) ,

( 2 , 4 , 5 , 4 , 1 , 6 ) ,

( 1 , 1 , 2 , 2 , 6 , 5 ) ,

( 3 , 1 , 5 , 3 , 5 , 7 ) ,

( 4 , 5 , 5 , 1 , 3 , 2 ) ,

( 3 , 1 , 3 , 4 , 11 , 8 ) ,

( 5 , 2 , 3 , 1 , 6 , 7 ) ,

( 4 , 1 , 2 , 4 , 8 , 1 ) ,

( 1 , 2 , 4 , 4 , 10 , 9 ) ,

( 3 , 5 , 2 , 5 , 4 , 4 ) ,

( 2 , 1 , 5 , 2 , 4 , 2 ) ,

( 4 , 3 , 2 , 5 , 11 , 3 ) ,

( 1 , 3 , 5 , 1 , 4 , 6 ) ,

( 5 , 2 , 4 , 4 , 2 , 9 ) ,

( 2 , 5 , 4 , 3 , 1 , 9 ) ,

( 3 , 1 , 5 , 5 , 2 , 4 ) ,

( 2 , 2 , 5 , 1 , 5 , 2 ) ,

( 3 , 1 , 3 , 2 , 10 , 8 ) ,

( 5 , 2 , 1 , 5 , 6 , 2 ) ,

( 3 , 1 , 2 , 5 , 7 , 4 ) ,

( 1 , 5 , 1 , 3 , 5 , 7 ) ,

( 2 , 1 , 2 , 5 , 8 , 8 ) ,

( 3 , 3 , 3 , 1 , 7 , 2 ) ,

( 4 , 4 , 5 , 1 , 11 , 3 ) ,

( 5 , 4 , 1 , 2 , 3 , 1 ) ,

( 4 , 4 , 4 , 3 , 9 , 7 ) ,

( 5 , 2 , 4 , 3 , 2 , 6 ) ,

( 3 , 2 , 3 , 1 , 3 , 1 ) ,

( 1 , 4 , 1 , 2 , 8 , 3 ) ,

( 4 , 1 , 1 , 1 , 9 , 6 ) ,

( 2 , 3 , 2 , 5 , 10 , 5 ) ,

( 2 , 3 , 4 , 3 , 5 , 2 ) ,

( 1 , 2 , 1 , 1 , 2 , 7 ) ,

( 3 , 4 , 2 , 4 , 8 , 9 ) ,

( 3 , 5 , 1 , 1 , 1 , 3 ) ,

( 1 , 1 , 2 , 3 , 2 , 9 ) ,

( 1 , 1 , 4 , 3 , 8 , 6 ) ,

( 3 , 2 , 2 , 1 , 1 , 1 ) ,

( 1 , 2 , 3 , 4 , 4 , 3 ) ,

( 2 , 4 , 1 , 1 , 5 , 4 ) ,

( 5 , 3 , 3 , 5 , 3 , 5 ) ,

( 1 , 1 , 4 , 5 , 3 , 6 ) ,

( 2 , 1 , 1 , 3 , 7 , 3 ) ,

( 2 , 4 , 1 , 3 , 7 , 6 ) ,

( 5 , 3 , 1 , 4 , 2 , 6 ) ,

( 5 , 1 , 3 , 3 , 7 , 2 ) ,

( 1 , 5 , 2 , 4 , 7 , 4 ) ,

( 2 , 2 , 1 , 1 , 10 , 7 ) ,

( 5 , 1 , 4 , 1 , 9 , 9 ) ,

( 1 , 5 , 4 , 3 , 10 , 3 ) ,

( 1 , 5 , 1 , 3 , 7 , 5 ) ,

( 3 , 4 , 3 , 1 , 5 , 8 ) ,

( 2 , 5 , 2 , 2 , 11 , 6 ) ,

( 5 , 3 , 5 , 2 , 11 , 2 ) ,

( 1 , 5 , 1 , 4 , 3 , 9 ) ,

( 3 , 2 , 5 , 2 , 2 , 1 ) ,

( 1 , 2 , 5 , 1 , 10 , 5 ) ,

( 2 , 1 , 5 , 3 , 11 , 2 ) ,

( 1 , 2 , 3 , 1 , 7 , 1 ) ,

( 5 , 5 , 1 , 2 , 2 , 7 ) ,

( 4 , 2 , 3 , 5 , 9 , 4 ) ,

( 4 , 4 , 3 , 5 , 10 , 6 ) ,

( 4 , 1 , 1 , 3 , 2 , 2 ) ,

( 4 , 3 , 5 , 4 , 3 , 1 ) ,

( 1 , 3 , 2 , 5 , 9 , 2 ) ,

( 5 , 5 , 5 , 3 , 9 , 6 ) ,

( 5 , 4 , 1 , 3 , 4 , 1 ) ,

( 4 , 2 , 2 , 4 , 3 , 5 ) ,

( 3 , 4 , 4 , 2 , 9 , 3 ) ,

( 2 , 2 , 5 , 4 , 3 , 6 ) ,

( 4 , 5 , 3 , 3 , 2 , 5 ) ,

( 5 , 4 , 1 , 4 , 11 , 9 ) ,

( 1 , 4 , 5 , 5 , 6 , 4 ) ,

( 1 , 4 , 2 , 3 , 5 , 1 ) ,

( 3 , 4 , 3 , 5 , 6 , 6 ) ,

( 4 , 1 , 5 , 4 , 8 , 8 ) ,

( 1 , 4 , 3 , 2 , 10 , 1 ) ,

( 5 , 4 , 3 , 3 , 6 , 2 ) ,

( 1 , 1 , 5 , 4 , 8 , 8 ) ,

( 4 , 2 , 3 , 4 , 5 , 7 ) ,

( 3 , 5 , 1 , 1 , 2 , 7 ) ,

( 2 , 4 , 2 , 3 , 8 , 4 ) ,

( 4 , 1 , 1 , 5 , 7 , 3 ) ,

( 3 , 2 , 2 , 1 , 8 , 2 ) ,

( 5 , 4 , 5 , 3 , 1 , 3 ) ,

( 1 , 5 , 1 , 4 , 9 , 1 ) ,

( 1 , 3 , 3 , 3 , 8 , 9 ) ,

( 1 , 1 , 1 , 1 , 9 , 8 ) ,

( 5 , 3 , 5 , 4 , 11 , 2 ) ,

( 1 , 4 , 5 , 3 , 6 , 4 ) ,

( 1 , 5 , 5 , 2 , 3 , 3 ) ,

( 4 , 3 , 5 , 1 , 2 , 8 ) ,

( 1 , 4 , 3 , 4 , 5 , 6 ) ,

( 3 , 2 , 4 , 5 , 11 , 7 ) ,

( 3 , 3 , 4 , 5 , 11 , 4 ) ,

( 4 , 1 , 3 , 4 , 9 , 8 ) ,

( 4 , 4 , 2 , 1 , 9 , 7 ) ,

( 5 , 3 , 1 , 2 , 7 , 1 );

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
