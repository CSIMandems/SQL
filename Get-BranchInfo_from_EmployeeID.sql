-- Show the branchID given an employee ID
-- SELECT e.branch_id 
-- WHERE e.employee_id = 1

-- Robust version that returns branch information given an employee id
-- Change the employee id , in this case it is for employee with id 1
SELECT b.civic_number,b.street_name, b.city, b.province, b.postal_code
FROM branch as b
WHERE b.branch_id = (
	SELECT e.branch_id
	FROM employee as e
	WHERE e.employee_id = 1);
