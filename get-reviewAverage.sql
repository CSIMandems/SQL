-- gives the averages for the selected branch id (professionalism, cleanliness, communication, value), in this example the branch is 1 <-- Change this 

SELECT ROUND(AVG(professionalism),2),ROUND(AVG(cleanliness),2),ROUND(AVG(communication),2),ROUND(AVG(value),2) FROM review 
WHERE branch_id = 1;
