INSERT INTO patient (first_name, middle_name, 
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


SELECT * FROM patient;

