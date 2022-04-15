
INSERT INTO appointment (date,	start_time, end_time,appointment_type, room_number, status, patient_id, employee_id)
VALUES
('2022-04-04','09:00:00','9:30:00','Teeth Cleaning',1,'CONFIRMED',1,4),
('2022-08-04','09:00:00','9:30:00','Teeth Cleaning',2,'UNCONFIRMED',1,4),
('2022-12-04','09:00:00','9:30:00','Teeth Cleaning',1,'UNCONFIRMED',1,4),

('2022-04-04','10:00:00','10:30:00','Teeth Cleaning',2,'CONFIRMED',2,4),
('2022-08-04','10:00:00','10:30:00','Teeth Cleaning',3,'CONFIRMED',2,4),
('2022-12-04','10:00:00','10:30:00','Teeth Cleaning',2,'UNCONFIRMED',2,4),


('2022-04-04','11:00:00','11:30:00','Teeth Cleaning',1,'CONFIRMED',3,4),
('2022-08-04','11:00:00','11:30:00','Teeth Cleaning',2,'CONFIRMED',3,4),
('2022-12-04','11:00:00','11:30:00','Teeth Cleaning',3,'CONFIRMED',3,4),


('2022-04-04','13:00:00','13:30:00','Teeth Cleaning',1,'CONFIRMED',4,4),
('2022-04-04','13:30:00','14:00:00','Teeth Cleaning',1,'CONFIRMED',5,4),

('2022-04-04','11:00:00','11:30:00','X-Ray',9,'CONFIRMED',6,1),
('2022-04-04','11:30:00','12:00:00','X-Ray',9,'CONFIRMED',7,1),


('2022-04-04','13:00:00','14:00:00','Braces',9,'CONFIRMED',6,1),
('2022-04-04','14:00:00','15:00:00','Braces',9,'CONFIRMED',7,1);

SELECT * from appointment;
