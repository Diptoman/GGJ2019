/// @description Spawn card
// You can write your code in this editor

var i;
penaltyModifier = 1;

for(i = 0; i < ds_list_size(penalty); i++)
{
	penaltyModifier = penaltyModifier * (ds_list_find_value(penalty, i) / 100);
	
	show_message(string(ds_list_find_value(penalty, i)));
}

deckForThisRound = SpawnCard(deckForThisRound);

alarm[1] = room_speed * .5;