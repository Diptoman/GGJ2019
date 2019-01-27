/// @description Setup text
// You can write your code in this editor

switch(cardYesMechanicIndex)
{
	case 0:
		cardYesText = "This card will not come back this round."
		break;
	case 1:
		cardYesText = string(cardYesValue1) + "% increase in chance for this card to come back later this round with " + string(cardYesValue2) + "% instant rest change.";
		break;
	case 2:
		cardYesText = string(cardYesValue1) + "% decrease in penalty for the next " + string(cardYesValue2) + " cards.";
		break;
	case 3:
		cardYesText = string(cardYesValue1) + "% chance for the next card to be a follow-up card."
		break;		
	case 4:
		cardYesText = "Rest increases by " + string(cardYesValue1) + " for the next " + string(cardYesValue2) + " cards.";
		break;
}

switch(cardNoMechanicIndex)
{
	case 0:
		cardNoText = "This card will not come back this round."
		break;
	case 1:
		cardNoText = string(cardNoValue1) + "% increase in chance for this card to come back with " + string(cardNoValue2) + "% instant rest change.";
		break;
	case 2:
		cardNoText = string(cardNoValue1) + "% decrease in penalty for the next " + string(cardNoValue2) + " cards.";
		break;
	case 3:
		cardNoText = string(cardNoValue1) + "% chance for the next card to be a follow-up card."
		break;		
	case 4:
		cardNoText = "Rest increases by " + string(cardNoValue1) + " for the next " + string(cardNoValue2) + " cards.";
		break;
}