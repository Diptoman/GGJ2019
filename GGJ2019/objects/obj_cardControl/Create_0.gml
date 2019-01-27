/// @description Initialize cards
cardList = load_csv("Data - NormalCard.csv");
cardYesList = load_csv("Data - NormalCardYes.csv");
cardNoList = load_csv("Data - NormalCardNo.csv");
cardChainList = load_csv("Data - ChainedCard.csv");
cardChainYesList = load_csv("Data - ChainedCardYes.csv");
cardChainNoList = load_csv("Data - ChainedCardNo.csv");

//Add default rest values
ds_grid_resize(cardList, 4, ds_grid_height(cardList)); //Def values are 0
ds_grid_resize(cardChainList, 4, ds_grid_height(cardChainList)); //Def values are 0

//Initiate round
game_round = 1;

//Create a deck
deckForThisRound = CreateDeck(1);

//Set timer to spawn card
alarm[0] = room_speed * 2;

canPress = false;

rest = 20;
currentRest = rest;

penalty = ds_list_create();
penaltyTimes = ds_list_create();
restInc = ds_list_create();
restIncTimes = ds_list_create();
penaltyModifier = 1;