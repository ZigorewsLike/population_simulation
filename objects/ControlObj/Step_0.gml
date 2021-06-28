/// @description Insert description here
if(keyboard_check_pressed(vk_f5)){
	room_restart();
}
if(keyboard_check_pressed(vk_f11)){
	window_set_fullscreen(!window_get_fullscreen())
}
if(keyboard_check_pressed(vk_f2)){
	debug = !debug;
}
if(base_number != instance_number(Entity)){
	base_number = instance_number(Entity);
	woman_count = 0;
	for(var i=0; i< base_number; i++){
		var obj = instance_find(Entity, i);
		if(obj.gender == 1){
			woman_count++;
		}
	}
	update_data = true;
}else{
	update_data = false;
}


