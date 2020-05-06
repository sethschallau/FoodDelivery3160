SELECT driver_driver_id, order_id, res_name, restaurant.address
FROM FoodDelivery.order
INNER JOIN FoodDelivery.restaurant
ON restaurant_restaurant_id = FoodDelivery.restaurant.restaurant_id
WHERE completed = 0
GROUP BY order_id;