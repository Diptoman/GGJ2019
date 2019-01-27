/// @description Create a deck for a round

/// CreateDeck(round)
/// @param round	round number (int)

var rnd = argument0;
var numOfCards, deck, tempDeck;

//Choose a number of cards to choose from
if (rnd < 20)
	numOfCards = 8 - floor(rnd / 4);
else
	numOfCards = 6;
	
tempDeck = obj_cardControl.cardList;
deck = ds_grid_create(3, numOfCards);

//Create deck
var i, j, line;
for(i = 0; i < numOfCards; i++)
{
	line = 1 + floor(random(ds_grid_height(tempDeck) - 1));
	
	deck [# 0, i] = tempDeck [# 0, line];
	deck [# 1, i] = tempDeck [# 1, line];
	deck [# 2, i] = tempDeck [# 2, line];
	
	ds_grid_delete_row(tempDeck, line);
}

return deck;