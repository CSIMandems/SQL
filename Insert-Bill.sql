INSERT INTO bill 
(  payment_method ,	card_number ,	patient_portion, 	insurance_portion, 	total_amount , 	appointment_id ,	invoice_id ,	claim_id)

VALUES
-- bill id , pyment type text, card 16, patient portion, insurance portion, total amoint, appt ID, invoice ID, Claim ID
('VISA',7463454942974456,'$110.00',NULL,'$110.00',1,1,1),
('VISA',7463454942974456,'$80.00',NULL,'$80.00',2,2,2),
('VISA',7463454942974456,'$80.00',NULL,'$80.00',3,3,3),

('DEBIT',8444290261520295,'$160.00',NULL,'$160.00',4,4,4),
('DEBIT',8444290261520295,'$80.00',NULL,'$80.00',5,5,5),
('DEBIT',8444290261520295,'$80.00','$-80.00','$0.00',6,6,6),

('CASH',0000000000000000,'$110.00',NULL,'$30.00',7,7,7),
('CASH',0000000000000000,'$110.00','$-80.00','$0.00',8,8,8),
('CASH',0000000000000000,'$110.00','$-80.00','$0.00',9,9,9),

('VISA',9686701306869149,'$110.00','$-70.00','$40.00',10,10,10),
('VISA',9686701306869149,'$110.00','$-70.00','$40.00',11,11,11),

('VISA',9686701306869149,'$200.00','$-150.00','$110.00',12,12,12),
('VISA',9686701306869149,'$200.00','$-150.00','$110.00',13,13,13),

('VISA',9686701306869149,'$3000.00','$-2000.00','$1060.00',14,14,14),
('VISA',9686701306869149,'$3000.00','$-2000.00','$1060.00',15,15,15);

Select * from bill;
