
INSERT INTO invoice
(    date,     employee_service_fee,    patient_fee,     insurance_fee,     discount,     penalty,     total_fee,     claim_id,    patient_id)
VALUES
-- invoice ID, Date, employee service fee, patient fee, insurance fee, discount, penalty, total fee, claimid, patient id
('2022-04-04','$30.00','$80.00',NULL,NULL,NULL,'$110.00',1,1),
('2022-08-04','$30.00','$80.00',NULL,'-$30.00',NULL,'$80.00',2,1),
('2022-12-04','$30.00','$80.00',NULL,'-$30.00',NULL,'$80.00',3,1),

('2022-04-04','$30.00','$80.00',NULL,NULL,'$50.00','$160.00',4,2),
('2022-08-04','$30.00','$80.00',NULL,'-$30.00',NULL,'$80.00',5,2),
('2022-12-04','$30.00','$80.00','-$80.00','-$30.00',NULL,'$0.00',6,2),

('2022-04-04','$30.00','$80.00','-$80.00',NULL,NULL,'$30.00',7,3),
('2022-08-04','$30.00','$80.00','-$80.00','-$30.00',NULL,'$0.00',8,3),
('2022-12-04','$30.00','$80.00','-$80.00','-$30.00',NULL,'$0.00',9,3),


('2022-04-04','$30.00','$80.00','-$70.00',NULL,NULL,'$40.00',10,4),
('2022-04-04','$30.00','$80.00','-$70.00',NULL,NULL,'$40.00',11,5),

('2022-04-04','$60.00','$200.00','-$150.00',NULL,NULL,'$110.00',12,6),
('2022-04-04','$60.00','$200.00','-$150.00',NULL,NULL,'$110.00',13,7),
('2022-04-04','$60.00','$3000.00','-$2000.00',NULL,NULL,'$1060.00',14,6),
('2022-04-04','$60.00','$3000.00','-$2000.00',NULL,NULL,'$1060.00',15,7);

SELECT * FROM invoice;
