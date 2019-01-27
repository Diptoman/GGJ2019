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
draw_set_alpha(1);
draw_healthbar(room_width / 2 - 96, room_height - 48, room_width / 2 + 96, room_height - 32, rest, c_black, c_navy, c_navy, 0, 1, 0);
draw_healthbar(room_width / 2 - 96, room_height - 48, room_width / 2 + 96, room_height - 32, currentRest, c_black, c_aqua, c_aqua, 0, 0, 0);

draw_set_color(c_red);
draw_rectangle(room_width / 2 - 1, room_height - 48, room_width / 2 + 1, room_height - 32, 0);

//Draw timer
draw_set_color(c_red);
draw_healthbar(0, 0, room_width, 16, (currentTurnTimer / turnTimerMax) * 100, c_dkgray, c_gray, c_gray, 0, 1, 0);


draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fnt_cardText);
draw_text(10, 32, "Night " + string(turnRound) + "\nNight ends in " + string(roundTimer) + " hours");

if (currentTurnTimer > 0)
{
	currentTurnTimer -= 1;
}
else if (currentTurnTimer == 0)
{
	currentTurnTimer = 0;
	if (alarm[0] < 0)
		obj_card.alarm[3] = 1;
}