/// @description Initialize cards
cardList = load_csv("Data - NormalCard.csv");
cardYesList = load_csv("Data - NormalCardYes.csv");
cardNoList = load_csv("Data - NormalCardNo.csv");
//cardChainList = load_csv("Data - ChainedCard.csv");
//cardChainYesList = load_csv("Data - ChainedCardYes.csv");
//cardChainNoList = load_csv("Data - ChainedCardNocsv");

//Initiate round
game_round = 1;

//Create a deck
deckForThisRound = CreateDeck(1);

//Set timer to spawn card
alarm[0] = room_speed * 2;