INSERT INTO responsible_party (first_name, middle_name, last_name, date_of_birth, gender, social_security_number, insurance_number, civic_number, street_name, city, province, postal_code, phone_number, email_address, user_id)

VALUES

---- (52,'Cheyanne Harrington')<-RP for kids -- insert into rp first
---- (55,'Katelyn Terry')<-RP for kids -- insert into RP first
('Cheyanne',NULL,'Harrington'	,'1990-06-14','F',425844905,31242080627392556735,26,'Mother Lane'		,'Ottawa','Ontario','D9Y3H4',6132413174,'Cheyanne.Harrington@responsibleparty.com'	,52),
('Katelyn','Brooke','Terry'	,'1991-12-18','F',790084336,87161421096627391973,469,'Stepmother Way'	,'Ottawa','Ontario','D9Y2R9',6135809128,'Katelyn.Terry@responsibleparty.com'		,55),
('Roberto',NULL,'Hoffman'			,'1968-03-23','M',169167110,59256175755916609149,596,'Father Way'		,'Ottawa','Ontario','D9Y5T8',6137941753,'Roberto.Hoffman@responsibleparty.com'		,58);

SELECT * FROM responsible_party;
