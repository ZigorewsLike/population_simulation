/// @description Insert description here
//x += random(10)-5;
//y += random(10)-5;

hungry_status -= random(1) * 0.005 * hungry_speed;
if(hungry_status <= 0){
	instance_destroy(self);
}
if(hungry_speed < 0.25){
	speed_to_food = 4.6;
}else{
	speed_to_food = 2.6;
}