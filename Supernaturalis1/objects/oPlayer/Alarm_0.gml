ghost_mode = false;
if (place_meeting(x, y + 1, oSolid)) { // if heidi is on the ground
	; // set her y_speed to 0 so she doesn't fall through the ground
	global.lifes = global.lifes - 1;
	canTakeDamage = false;
	alarm[3] = game_get_speed(gamespeed_fps)*1;
}