/// @description Draw bar
// You can write your code in this editor

if (rest > 100)
	rest = 100;
	
if (rest < 0)
	rest = 0;
	
if (currentRest < rest)
	currentRest += .1;
else if (currentRest > rest)
	currentRest -= .1;
	
draw_set_color(c_black);
draw_healthbar(room_width / 2 - 96, room_height - 48, room_width / 2 + 96, room_height - 32, rest, c_black, c_navy, c_navy, 0, 1, 0);
draw_healthbar(room_width / 2 - 96, room_height - 48, room_width / 2 + 96, room_height - 32, currentRest, c_black, c_aqua, c_aqua, 0, 0, 0);