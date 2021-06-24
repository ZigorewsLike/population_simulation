/// @description Insert description here
draw_set_color(c_blue);
draw_rectangle(x-width_object/2, y-width_object/2, x+width_object/2, y+width_object/2, false);
draw_set_color(c_yellow);
draw_set_alpha(0.3);
draw_ellipse(x-area_distance/2, y-area_distance/2, x+area_distance/2, y+area_distance/2, true);
draw_set_color(c_white);
draw_set_alpha(1);

