/// @description Create a deck for a round

/// CreateDeck(round)
/// @param round	round number (int)

var rnd = argument0;
var numOfCards, deck, tempDeck;

//Choose a number of cards to choose from
numOfCards = 10;
	
tempDeck = ds_grid_create(ds_grid_width(obj_cardControl.cardList), ds_grid_height(obj_cardControl.cardList));
ds_grid_copy(tempDeck, obj_cardControl.cardList);
deck = ds_grid_create(4, numOfCards);

//Create deck
var i, j, line;
for(i = 0; i < numOfCards; i++)
{
	line = 1 + floor(random(ds_grid_height(tempDeck) - 1));
	
	deck [# 0, i] = tempDeck [# 0, line];
	deck [# 1, i] = tempDeck [# 1, line];
	deck [# 2, i] = tempDeck [# 2, line];
	deck [# 3, i] = tempDeck [# 3, line];
	
	ds_grid_delete_row(tempDeck, line);
}

return deck;