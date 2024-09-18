SELECT concat(t1.topping_name, ',' , t2.topping_name,',', t3.topping_name)as toppings,
t1.ingredient_cost + t2.ingredient_cost + t3.ingredient_cost as total_cost
FROM pizza_toppings as t1,
pizza_toppings as t2,
pizza_toppings as t3
where t1.topping_name < t2.topping_name
and t2.topping_name < t3.topping_name
ORDER BY total_cost DESC, toppings 
