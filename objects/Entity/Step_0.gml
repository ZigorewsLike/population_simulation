/// @description WalkSystem
//x += random(2)-1;
//y += random(2)-1;

if(moveble){
	x = mouse_x;
	y = mouse_y;
}

if(!freeze){

	hungry_status -= random(1) * common_hungry_speed * hungry_speed;
	if(hungry_status <= 0){
		instance_create_depth(x, y, 0, DeadParticle);
		instance_destroy(self);
	}
	if(hungry_status < 0.25){
		speed_to_food = 4.6;
	}else{
		speed_to_food = 2.6;
	}
	if(hungry_status > 1 && !overfood){
		overfood = true;
		hungry_speed *= 3;
	}else if(hungry_status < 1 && overfood){
		overfood = false;
		hungry_speed /= 3;
	}
}