--Get all appointments for a specific employee

select * from appointment
WHERE employee_id = 4
ORDER BY date ASC,start_time ASC ;
