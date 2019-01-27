/// @description Spawn card
// You can write your code in this editor

if (roundTimer > 0)
	roundTimer -= 1;
else
{
	if (rest < 50)
	{
		room_goto(rm_end);
		if (turnRound < global.hiscore)
			global.hiscore = turnRound;
			
		global.scr = turnRound;
	}
	
	roundTimer = 8;
	turnRound += 1;
	if (turnRound < 10)
		rest = 60 - turnRound * 2;
	else
		rest = 40;
	ds_grid_resize(deckForThisRound, 0, 0);
	deckForThisRound = CreateDeck(turnRound);
	
	SpawnText(room_width / 2, room_height/2, fnt_bigText, "Day " + string(turnRound), 2, c_aqua, 96);
}

if (turnRound < 20)
{
	turnTimerMax = room_speed * ( 15 - turnRound * .5);
	currentTurnTimer = turnTimerMax;
}
else
{
	turnTimerMax = room_speed * 5;
	currentTurnTimer = turnTimerMax;
}

var i;
penaltyModifier = 1;

for(i = 0; i < ds_list_size(penalty); i++)
{
	penaltyModifier = penaltyModifier * (ds_list_find_value(penalty, i) / 100);
	
	//show_message(string(ds_list_find_value(penalty, i)));
}

deckForThisRound = SpawnCard(deckForThisRound);

alarm[1] = room_speed * .5;