SELECT order_id, student.name, student.phone, location.location_name, location.address, completed
FROM FoodDelivery.order
INNER JOIN student
ON student_student_id = student.student_id
INNER JOIN FoodDelivery.location
ON location_location_id = location.location_id
WHERE completed = 0
ORDER BY order_id;