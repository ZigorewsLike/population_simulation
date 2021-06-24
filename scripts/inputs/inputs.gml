// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function inputs(){
	deadzone = 0.13

	anykay_gpw = gamepad_button_check_pressed(0, gp_face4) || gamepad_button_check_pressed(0, gp_face3) || 
	gamepad_button_check_pressed(0, gp_face2) || gamepad_button_check_pressed(0, gp_face1) || 
	gamepad_button_check_pressed(0, gp_select) || gamepad_button_check_pressed(0, gp_start) || 
	gamepad_button_check_pressed(0, gp_padd) || gamepad_button_check_pressed(0, gp_padl) || 
	gamepad_button_check_pressed(0, gp_padr) || gamepad_button_check_pressed(0, gp_padu) || 
	gamepad_button_check_pressed(0, gp_shoulderl) || gamepad_button_check_pressed(0, gp_shoulderlb) || 
	gamepad_button_check_pressed(0, gp_shoulderr) || gamepad_button_check_pressed(0, gp_shoulderrb) || 
	gamepad_button_check_pressed(0, gp_stickl) || gamepad_button_check_pressed(0, gp_stickr)
	anykay_gp = anykay_gpw || (gamepad_axis_value(0, gp_axislv)<-deadzone) || 
	(gamepad_axis_value(0, gp_axislv)>deadzone) || (gamepad_axis_value(0, gp_axislh)<-deadzone) || 
	(gamepad_axis_value(0, gp_axislh)>deadzone) || (gamepad_axis_value(0, gp_axisrv)<-deadzone) || 
	(gamepad_axis_value(0, gp_axisrv)>deadzone) || (gamepad_axis_value(0, gp_axisrh)<-deadzone) || 
	(gamepad_axis_value(0, gp_axisrh)>deadzone)

	vkleft = (keyboard_check(ord("A")) || (gamepad_axis_value(0, gp_axisrh)) < -deadzone);
	vkright = (keyboard_check(ord("D"))|| (gamepad_axis_value(0, gp_axisrh)) > deadzone);
	vkup = (keyboard_check(ord("W"))|| (gamepad_axis_value(0, gp_axisrv)) < -deadzone);
	vkdown = (keyboard_check(ord("S"))|| (gamepad_axis_value(0, gp_axisrv)) > deadzone);

	viewleft = (keyboard_check(vk_left) || (gamepad_axis_value(0, gp_axislh)) < -deadzone);
	viewright = (keyboard_check(vk_right)|| (gamepad_axis_value(0, gp_axislh)) > deadzone);
	viewup = (keyboard_check(vk_up)|| (gamepad_axis_value(0, gp_axislv)) < -deadzone);
	viewdown = (keyboard_check(vk_down)|| (gamepad_axis_value(0, gp_axislv)) > deadzone);
	
	viewMinus = keyboard_check(ord("N"));
	viewPlus = keyboard_check(ord("M"));

	if gamepad_is_connected(0){
		gamepad_set_axis_deadzone(0, deadzone);
	
	}
}