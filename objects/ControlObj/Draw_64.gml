/// @description Insert description here
draw_set_color(c_black);
draw_set_alpha(0.4);
draw_set_halign(fa_center);
draw_rectangle(0, 0, 200, 220, false);
draw_set_color(c_white);
draw_rectangle(0, 0, 200, 220, true);
draw_set_alpha(1);
draw_text(100, 0, "Slimes: " + string(base_number) + "(" + string(base_number - first_number) + ") ");
draw_set_color(make_color_rgb(255,20,147));
draw_rectangle(10, 20, 110, 30, false);
draw_set_color(c_blue);
draw_rectangle(woman_count / base_number * 100 + 10, 20, 110, 30, false);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_text(120, 15, string(woman_count / base_number * 100) + "%");

/////////////////// SELECT SLIME ///////////////////////////

draw_set_halign(fa_center);
var slime_color = c_white;
if(instance_exists(select_object)){
	slime_color = c_blue;
	if(select_object.gender == 1)
		slime_color = make_color_rgb(255,20,147)
	draw_text(100, 100, "id:" + string(select_object.id));
	with(select_object){
		var x_bar = 100;
		var y_bar = 145;
		if(hungry_status <= 1){
			draw_set_color(make_colour_rgb(20, 20, 20));
			draw_rectangle(x_bar-width_object/2-20, y_bar-width_object/2 - 5, x_bar-width_object/2-20 + ((width_object + 40)), y_bar-width_object/2 - 15, false);
			draw_set_color(c_olive);
			draw_rectangle(x_bar-width_object/2-20, y_bar-width_object/2 - 5, x_bar-width_object/2-20 + ((width_object + 40) * hungry_status), y_bar-width_object/2 - 15, false);
	
		}else{
			draw_set_color(c_yellow);
			draw_rectangle(x_bar-width_object/2-20, y_bar-width_object/2 - 5, x_bar-width_object/2-20 + ((width_object + 40) * hungry_status), y_bar-width_object/2 - 15, false);
			draw_set_color(c_olive);
			draw_rectangle(x_bar-width_object/2-20, y_bar-width_object/2 - 5, x_bar-width_object/2-20 + ((width_object + 40)), y_bar-width_object/2 - 15, false);
		}
		draw_text(100, 130, "hs: " + string(hungry_status));
		draw_set_color(c_white);
		draw_text(100, 145, "hungry_active: " + string(hungry_active));
		draw_text(100, 160, "hungry_speed: " + string(hungry_speed));
		draw_text(100, 175, "sel_action: " + string(sel_action));
		draw_text(100, 190, "attractiveness: " + string(attractiveness));
	}
}
draw_sprite_ext(slime, 0, 100, 60, 2, 2, 0, slime_color, 1.0);
draw_set_halign(fa_left);
