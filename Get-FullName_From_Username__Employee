SELECT CONCAT(first_name,' ', last_name ),employee_type from employee as e
WHERE  e.user_id = (
	SELECT u.user_id
	FROM users as u
	WHERE username = 'Lily Ingram'
);
