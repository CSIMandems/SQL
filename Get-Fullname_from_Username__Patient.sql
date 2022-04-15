SELECT CONCAT(first_name,' ', last_name ) from patient as p
WHERE  p.user_id = (
	SELECT u.user_id
	FROM users as u
	WHERE username = 'Roy Colon'
);
