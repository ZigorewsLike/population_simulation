/// @description Insert description here
draw_set_color(c_black);
draw_set_alpha(0.4);
draw_rectangle(0, 0, 200, 40, false);
draw_set_color(c_white);
draw_rectangle(0, 0, 200, 40, true);
draw_set_alpha(1);
draw_text(10, 0, "Slimes: " + string(base_number) + "(" + string(base_number - first_number) + ") " + string(woman_count));
draw_set_color(make_color_rgb(255,20,147));
draw_rectangle(10, 20, 110, 30, false);
draw_set_color(c_blue);
draw_rectangle(woman_count / base_number * 100 + 10, 20, 110, 30, false);
draw_set_color(c_white);
draw_text(120, 15, string(woman_count / base_number * 100) + "%");