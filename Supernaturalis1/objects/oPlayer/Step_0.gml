
if (ghost_mode == false){
	y_speed = my_gravity; // add gravity to y_speed
	
	move_and_collide(x_speed, y_speed, oSolid);
	
	if (place_meeting(x, y + 1, oSolid)) { // if heidi is on the ground
        y_speed = 0; // set her y_speed to 0 so she doesn't fall through the ground
	}
	
	if (place_meeting(x, y, oSpikes)&&canTakeDamage) { // if heidi collides with the spikes

		global.lifes = global.lifes - 1;
		canTakeDamage = false;
		y = room_height/2
		alarm[3] = game_get_speed(gamespeed_fps)*2;
	}

} else if (ghost_mode == true){
	y_speed = 0;
	move_and_collide(x_speed, y_speed, []);
}


if (place_meeting(x, y, oFlag)) {
	room_goto(Room2);
}

border_crossing = y > room_height or y < 0 or x > room_width or x < 0

if (border_crossing && canTakeDamage) { // if the player is outside of the room

	global.lifes = global.lifes - 1;
	canTakeDamage = false;
	y = room_height/2
	alarm[3] = game_get_speed(gamespeed_fps)*2;
}



if (keyboard_check_pressed(vk_space)){
	my_gravity = my_gravity*-1
}

if (keyboard_check_pressed(ord("G"))){
	ghost_mode = !ghost_mode;
	alarm[0] = game_get_speed(gamespeed_fps)*.7;
}

if (keyboard_check_pressed(ord("B"))){
	x_speed = 10
	my_gravity = 1.5
	alarm[1] = game_get_speed(gamespeed_fps)*2;
}

if (global.lifes<=0){
	 room_restart();
}