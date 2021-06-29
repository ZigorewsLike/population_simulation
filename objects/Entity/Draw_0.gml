/// @description Draw slime and debug
//draw_set_color(c_blue);
//draw_rectangle(x-width_object/2, y-width_object/2, x+width_object/2, y+width_object/2, false);
var slime_color = c_blue;

if(gender == 1)
	slime_color = make_color_rgb(255,20,147)
draw_sprite_ext(slime, 0, x, y, 1, 1, 0, slime_color, 1.0);
draw_set_color(c_yellow);
draw_set_alpha(0.1);
//draw_ellipse(x-area_visible_distance, y-area_visible_distance, x+area_visible_distance, y+area_visible_distance, true);

draw_set_alpha(1);
if(hungry_status <= 1){
	draw_set_color(make_colour_rgb(20, 20, 20));
	draw_rectangle(x-width_object/2-20, y-width_object/2 - 5, x-width_object/2-20 + ((width_object + 40)), y-width_object/2 - 10, false);
	draw_set_color(c_olive);
	draw_rectangle(x-width_object/2-20, y-width_object/2 - 5, x-width_object/2-20 + ((width_object + 40) * hungry_status), y-width_object/2 - 10, false);
	
}else{
	draw_set_color(c_yellow);
	draw_rectangle(x-width_object/2-20, y-width_object/2 - 5, x-width_object/2-20 + ((width_object + 40) * hungry_status), y-width_object/2 - 10, false);
	draw_set_color(c_olive);
	draw_rectangle(x-width_object/2-20, y-width_object/2 - 5, x-width_object/2-20 + ((width_object + 40)), y-width_object/2 - 10, false);
	
}
if(debug == 1 || debug == 3){
	if(instance_exists(target_food)){
		if(near_food)
			draw_set_color(c_green);
		else
			draw_set_color(c_red);
		draw_line(x, y, target_food.x, target_food.y);
	}
	if(instance_exists(target_couple)){
		draw_set_color(c_aqua);
		draw_line(x, y, target_couple.x, target_couple.y);
	}
}
if(debug == 2 || debug == 3){
	draw_set_color(slime_color);
	draw_set_halign(fa_center);
	draw_text(x, y-20, "action:" +string(sel_action));
}
if(mouse_select){
	draw_set_color(c_green);
	draw_rectangle(x-25, y-25, x+25, y+25, true);
}
draw_set_alpha(1);
draw_set_color(c_white);
draw_set_halign(fa_left);

