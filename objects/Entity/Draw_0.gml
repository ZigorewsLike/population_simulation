/// @description Insert description here
//draw_set_color(c_blue);
//draw_rectangle(x-width_object/2, y-width_object/2, x+width_object/2, y+width_object/2, false);
if(gender == 0)
	draw_sprite_ext(slime, 0, x, y, 1, 1, 0, c_blue, 1.0);
else
	draw_sprite_ext(slime, 0, x, y, 1, 1, 0, c_red, 1.0);
draw_set_color(c_yellow);
draw_set_alpha(0.1);
//draw_ellipse(x-area_visible_distance, y-area_visible_distance, x+area_visible_distance, y+area_visible_distance, true);

draw_set_color(c_red);
draw_set_alpha(1);
draw_rectangle(x-width_object/2-20, y-width_object/2 - 5, x-width_object/2-20 + ((width_object + 40) * hungry_status), y-width_object/2 - 10, false);

if(instance_exists(target_food)){
	if(near_food)
		draw_set_color(c_green);
	else
		draw_set_color(c_red);
	//draw_line(x, y, target_food.x, target_food.y);

	//draw_text(x, y-80, "cos x:" +string(x - target_food.x / y - target_food.y) + " y:" + string(y - target_food.y / x - target_food.x));
	//draw_text(x, y-100, "sub x:" +string(x - target_food.x) + " y:" + string(y - target_food.y));
}
draw_set_alpha(1);
draw_set_color(c_white);

