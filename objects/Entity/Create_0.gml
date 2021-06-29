/// @description Init
area_visible_distance = 400;
area_move_distance = 300;
width_object = 20;
hungry_status = random(0.7)+0.3;
target_food = noone;
target_couple = noone;
speed_to_food = 2.6;
speed_walk = 1.4;
hungry_speed = random(0.5) + 0.1;
hungry_active = random(0.5) + 0.5;
near_food = false;
gender = irandom(1);
overfood = false;
attractiveness = random(1);
mouse_select = false;
moveble = false;

walk_x = 0;
walk_y = 0;

enum SlimeActions{
	stand,
	walk,
	eat,
	findCouple,
	reserv,
	len,
}


sel_action = irandom(SlimeActions.len-2);
do_action = true;

randomise();
