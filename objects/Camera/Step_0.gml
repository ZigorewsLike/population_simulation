/// @description Insert description here
inputs();

if(vkup){
	if(y > ViewHeight/2)
		y -= camera_speed;
}else if(vkdown){
	if(y < room_height - ViewHeight/2)
		y += camera_speed;
}

if(vkleft){
	if(x > ViewWidth/2)
		x -= camera_speed;
}else if(vkright){
	if(x < room_width - ViewWidth/2)
		x += camera_speed;
}
var speed_zoom = 150
if(viewPlus){
	ViewWidth += speed_zoom/9;
	ViewHeight += speed_zoom/16;
	camera_set_view_size(view_camera[0], ViewWidth, ViewHeight);
	camera_set_view_border(view_camera[0], ViewWidth/2, ViewHeight/2);
}
if(viewMinus){
	ViewWidth -= speed_zoom/9;
	ViewHeight -= speed_zoom/16;
	camera_set_view_size(view_camera[0], ViewWidth, ViewHeight);
	camera_set_view_border(view_camera[0], ViewWidth/2, ViewHeight/2);
}