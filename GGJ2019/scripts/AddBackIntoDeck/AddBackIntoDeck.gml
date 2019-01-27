/// @description Add a card back into the deck based on a percentage chance

/// AddBackIntoDeck (deck, chance, card id, card img, card text, card instant rest)

var deck, chance, cardId, cardImg, cardTxt, cardInstaRest, chanceNum;

deck = argument0;
chance = argument1;
cardId = argument2;
cardImg = argument3;
cardTxt = argument4;
cardInstaRest = argument5;

chanceNum = floor(chance / 50);

var i;

var origSize = ds_grid_height(deck);
ds_grid_resize(deck, 4, ds_grid_height(deck) + chanceNum + 1);

for (i = 0; i <= chanceNum; i++)
{
	var index = origSize + i;
	deck [# 0, index] = string(cardId);
	deck [# 1, index] = string(cardImg);
	deck [# 2, index] = string(cardTxt);
	deck [# 3, index] = string(cardInstaRest);
}

return deck;