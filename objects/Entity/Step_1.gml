/// @description Find food and woman

function calc_step(target_x, target_y){
	var dist_x = target_x - x;
	var dist_y = target_y - y;
	var gip = sqrt(dist_x*dist_x + dist_y*dist_y);
	var cos_xy = dist_x / gip;
	var sin_xy = dist_y / gip;
	return [cos_xy, sin_xy, dist_x, dist_y];
}

if(!freeze){

	if(hungry_status < hungry_active){
		sel_action = SlimeActions.eat;
	}
	switch(sel_action){
		case SlimeActions.eat:
			target_food = instance_nearest(x, y, Food);

			if(instance_exists(target_food)){
				if(point_in_circle(x, y, target_food.x, target_food.y, area_visible_distance)){
					near_food = true;
					if(hungry_status < 1){
						var steps = calc_step(target_food.x, target_food.y);
	
						x += steps[0] * speed_to_food;
						y += steps[1] * speed_to_food;
	
						if(abs(steps[2]) + abs(steps[3]) < 10){
							hungry_status += target_food.saturation;
							instance_destroy(target_food);
							if(hungry_status >= hungry_active)
								sel_action = SlimeActions.stand;
						}
					}else{
						sel_action = SlimeActions.stand;
					}
				}else{
					near_food = false;
				}
			}
			break;
		case SlimeActions.findCouple:
			var n = instance_number(Entity);
			var pointx = x;
			var pointy = y;
			var list = ds_priority_create();
			with (Entity) ds_priority_add(list, id, distance_to_point(pointx,pointy));
			repeat (n){
				target_couple = ds_priority_delete_min(list);
				if(target_couple.gender != self.gender && point_in_circle(x, y, target_couple.x, target_couple.y, area_visible_distance))
					break;
				else
					target_couple = noone;
			}
			ds_priority_destroy(list);
		
			sel_action = SlimeActions.stand;
			break;
		case SlimeActions.stand:
			alarm[0] = room_speed * random(1);
			break;
		case SlimeActions.walk:
			if(do_action){
				walk_x = x + random(area_move_distance*2) - area_move_distance;
				walk_y = y + random(area_move_distance*2) - area_move_distance;
				do_action = false;
			}
			walk_x = min(max(0, walk_x), room_width);
			walk_y = min(max(0, walk_y), room_height);
			var steps = calc_step(walk_x, walk_y);
			x += steps[0] * speed_walk;
			y += steps[1] * speed_walk;
		
			if(abs(steps[2]) + abs(steps[3]) < 10){
				sel_action = SlimeActions.stand;
			}	
			break;
	}
}

