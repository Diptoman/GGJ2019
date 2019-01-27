/// @description Play
// You can write your code in this editor

if (obj_cardControl.canPress)
{
	if (keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A")))
	{
		obj_cardControl.rest += cardNoRest;
		
		switch(cardNoMechanicIndex)
		{
			case -1:
				break;
			case 0:
				break;
			case 1:
				obj_cardControl.deckForThisRound = AddBackIntoDeck(obj_cardControl.deckForThisRound, cardNoValue1, cardID, cardImg, cardText, cardInstantRest + cardNoValue2);
				break;
			case 2:
				ds_list_add(obj_cardControl.penalty, (100 - cardNoValue1));
				ds_list_add(obj_cardControl.penaltyTimes, cardNoValue2);
				break;
			case 4:
				ds_list_add(obj_cardControl.restInc, cardNoValue1);
				ds_list_add(obj_cardControl.restIncTimes, cardNoValue2);
				break;
		}
		
		arrowLeft.alarm[2] = 1;
		arrowRight.alarm[3] = 1;
		
		obj_cardControl.alarm[0] = 2 * room_speed;
		TweenFire(id, EaseOutQuad, 0, true, 0, .5, x__, x, - 200);
		TweenFire(id, EaseOutQuad, 0, true, 0, .4, image_alpha__, 1, 0);
		alarm[2] = room_speed;
	}
	else if (keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D")))
	{
		obj_cardControl.rest += cardYesRest;
		switch(cardYesMechanicIndex)
		{
			case -1:
				break;
			case 0:
				break;
			case 1:
				obj_cardControl.deckForThisRound = AddBackIntoDeck(obj_cardControl.deckForThisRound, cardYesValue1, cardID, cardImg, cardText, cardInstantRest + cardYesValue2);
				break;
			case 2:
				ds_list_add(obj_cardControl.penalty, (100 - cardYesValue1));
				ds_list_add(obj_cardControl.penaltyTimes, cardYesValue2);
				break;
			case 4:
				ds_list_add(obj_cardControl.restInc, cardYesValue1);
				ds_list_add(obj_cardControl.restIncTimes, cardYesValue2);
				break;
		}
		
		arrowLeft.alarm[3] = 1;
		arrowRight.alarm[2] = 1;
		
		obj_cardControl.alarm[0] = 2 * room_speed;
		TweenFire(id, EaseOutQuad, 0, true, 0, .5, x__, x, room_width + 200);
		TweenFire(id, EaseOutQuad, 0, true, 0, .4, image_alpha__, 1, 0);
		alarm[2] = room_speed;
	}
}