/// @description Spawn a card from a deck randomly

/// SpawnCard (deck)
/// @param Deck	Deck (grid)

var card, line, deck;

deck = argument0;

line = floor(random(ds_grid_height(deck)));

card = instance_create_layer(room_width/2, room_height + 400, "Cards", obj_card);
card.cardID = deck[# 0, line];
card.image_index = deck[# 1, line];
card.cardText = deck [# 2, line];

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
card.cardYesRest = obj_cardControl.cardYesList [# 0, index];
card.cardYesMechanicIndex = obj_cardControl.cardYesList [# 1, index];
card.cardYesValue1 = obj_cardControl.cardYesList [# 2, index];
card.cardYesValue2 = obj_cardControl.cardYesList [# 3, index];
//card.cardYesValue3 = obj_cardControl.cardYesList [# 4, index];

//No values
card.cardNoRest = obj_cardControl.cardNoList [# 0, index];
card.cardNoMechanicIndex = obj_cardControl.cardNoList [# 1, index];
card.cardNoValue1 = obj_cardControl.cardNoList [# 2, index];
card.cardNoValue2 = obj_cardControl.cardNoList [# 3, index];
//card.cardNoValue3 = obj_cardControl.cardNoList [# 4, index];

ds_grid_delete_row(deck, line);

return deck;