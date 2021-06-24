/// @description Insert description here
target_food = instance_nearest(x, y, Food);

if(instance_exists(target_food)){
	if(point_in_circle(x, y, target_food.x, target_food.y, area_visible_distance)){
		near_food = true;
		if(hungry_status < hungry_active){
			var dist_x = target_food.x - x;
			var dist_y = target_food.y - y;
			var gip = sqrt(dist_x*dist_x + dist_y*dist_y);
			var cos_xy = dist_x / gip;
			var sin_xy = dist_y / gip;
	
			x += cos_xy * speed_to_food;
			y += sin_xy * speed_to_food;
	
			if(abs(dist_x) + abs(dist_y) < 10){
				hungry_status += target_food.saturation;
				instance_destroy(target_food);
			}
		}
	}else{
		near_food = false;
	}
}
