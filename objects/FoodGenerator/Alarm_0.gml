/// @description Insert description here
instance_create_depth(random(room_width - border_size*2)+border_size, random(room_height - border_size*2)+border_size, 0, Food);
alarm[0] = room_speed * timeout;