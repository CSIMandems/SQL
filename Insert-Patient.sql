INSERT INTO patient VALUES

(1,'Roy',NULL,'Colon',		'1965-05-17','M',683401662,90489026346815766588,56	,'Hotsauce Drive',	'Ottawa','Ontario','D9Y6D5',6133724404,'Roy.Colon@patient.com',36,NULL),
(2,'Jaelyn',NULL,'Owens',	'1986-06-25','M',797638725,86897145633155104943,235	,'Ghostpepper Road','Ottawa','Ontario','D9Y7J6',6130365226,'Jaelyn.Owens@patient.com',37,NULL),
(3,'Clara',NULL,'Wu',		'1978-02-20','F',487131841,98370934436219627481,7861,'Chili Circle',	'Ottawa','Ontario','D9Y2E9',6133298619,'Clara.Wu@patient.com',38,NULL);



-- -- ALL FAMILIES IN BRANCH 1
-- --FAMILY#1 regular family, all same address all patients, all same insurance
-- (51,'Evan Harrington')
-- (52,'Cheyanne Harrington')<-RP for kids -- insert into rp first // done
--RP :(RP ID : 1,'Cheyanne',NULL,'Harrington'	,'1990-06-14','F',425844905,31242080627392556735,26,'Mother Lane'		,'Ottawa','Ontario','D9Y3H4',6132413174,'Cheyanne.Harrington@responsibleparty.com'	,52),
-- (53,'Malcolm Harrington')
-- (54,'Alison Harrington')

(4,'Evan',NULL,	'Harrington','1980-12-18','M',790468518,31242080627392556735,26,'Mother Lane'		,'Ottawa','Ontario','D9Y3H4',6132413174,'Evan.Harrington@patient.com'	,51,NULL),
(5,'Cheyanne',NULL,	'Harrington','1990-06-14','F',425844905,31242080627392556735,26,'Mother Lane'		,'Ottawa','Ontario','D9Y3H4',6132413174,'Cheyanne.Harrington@responsibleparty.com'	,52,NULL),
(6,'Malcolm',NULL,	'Harrington','2000-08-24','M',407822169,31242080627392556735,26,'Mother Lane'		,'Ottawa','Ontario','D9Y3H4',6132413174,'Malcolm.Harrington@patient.com'	,53,1),
(7,'Alison',NULL,	'Harrington','2003-02-11','F',988603286,31242080627392556735,26,'Mother Lane'		,'Ottawa','Ontario','D9Y3H4',6132413174,'Alison.Harrington@patient.com'	,54,1),


SELECT * FROM patient;
-- -- DELETE * FROM patient;
