/// @description Insert description here
if(moveble){
	x = mouse_x;
	y = mouse_y;
}
if(rotten){
	image_alpha -= 0.01;
	if(image_alpha == 0)
		instance_destroy(self);
}
