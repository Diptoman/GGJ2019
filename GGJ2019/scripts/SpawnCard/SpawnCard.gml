/// @description Spawn a card from a deck randomly

/// SpawnCard (deck)
/// @param Deck	Deck (grid)

var card, line, deck;

deck = argument0;

line = floor(random(ds_grid_height(deck)));

card = instance_create_layer(room_width/2, room_height + 400, "Cards", obj_card);
card.cardID = deck[# 0, line];
card.cardImg = int64(deck[# 1, line]);
card.cardText = deck [# 2, line];
if (deck [# 3, line] > 0)
{
	card.cardInstantRest = deck [# 3, line] * obj_cardControl.penaltyModifier;
}
else
{
	card.cardInstantRest = deck [# 3, line];
}

var i, index;
index = -1;

//Go through card list
for(i = 0; i < ds_grid_height(obj_cardControl.cardList); i++)
{
	if (obj_cardControl.cardList [# 0, i] == deck [# 0, line])
	{
		//Card matches, use this index
		index = i;
	}
}

//Yes values
if (int64(obj_cardControl.cardYesList [# 0, index]) < 0)
{
	card.cardYesRest = int64(obj_cardControl.cardYesList [# 0, index]) * obj_cardControl.penaltyModifier;
}
else
{
	card.cardYesRest = int64(obj_cardControl.cardYesList [# 0, index]);
}
card.cardYesMechanicIndex = int64(obj_cardControl.cardYesList [# 1, index]);
card.cardYesValue1 = int64(obj_cardControl.cardYesList [# 2, index]);
card.cardYesValue2 = int64(obj_cardControl.cardYesList [# 3, index]);
//card.cardYesValue3 = obj_cardControl.cardYesList [# 4, index];

//No values
if (int64(obj_cardControl.cardNoList [# 0, index]) < 0)
{
	card.cardNoRest = int64(obj_cardControl.cardNoList [# 0, index]) * obj_cardControl.penaltyModifier;
}
else
{
	card.cardNoRest = int64(obj_cardControl.cardNoList [# 0, index]);
}
card.cardNoMechanicIndex = int64(obj_cardControl.cardNoList [# 1, index]);
card.cardNoValue1 = int64(obj_cardControl.cardNoList [# 2, index]);
card.cardNoValue2 = int64(obj_cardControl.cardNoList [# 3, index]);
//card.cardNoValue3 = obj_cardControl.cardNoList [# 4, index];

ds_grid_delete_row(deck, line);

//Change all the penalties
var val, ind;
for(i = 0; i < ds_list_size(obj_cardControl.penaltyTimes); i++)
{
	val = ds_list_find_value(obj_cardControl.penaltyTimes, i);
	if (val == 1)
	{
		ds_list_delete(obj_cardControl.penalty, i);
		ds_list_delete(obj_cardControl.penaltyTimes, i);
		i = -1;
	}
	else
	{
		ds_list_replace(obj_cardControl.penaltyTimes, i, val - 1);
	}
}

//Change all the rest increases
for(i = 0; i < ds_list_size(obj_cardControl.restIncTimes); i++)
{
	val = ds_list_find_value(obj_cardControl.restIncTimes, i);
	obj_cardControl.rest += ds_list_find_value(obj_cardControl.restInc, i);
	SpawnText(room_width / 2 - 96 + floor(random(192)), room_height - 48, fnt_cardText, string(ds_list_find_value(obj_cardControl.restInc, i)), 1.5, c_aqua, 96);
	if (val == 1)
	{
		ds_list_delete(obj_cardControl.restInc, i);
		ds_list_delete(obj_cardControl.restIncTimes, i);
		i = -1;
	}
	else
	{
		ds_list_replace(obj_cardControl.restIncTimes, i, val - 1);
	}
}

return deck;