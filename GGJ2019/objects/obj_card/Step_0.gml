/// @description Play
// You can write your code in this editor

if (obj_cardControl.canPress)
{
	if (keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A")))
	{
		obj_cardControl.rest += cardNoRest;
		
		SpawnText(room_width / 2 - 96 + floor(random(192)), room_height - 48, fnt_cardText, string(cardNoRest), 1.5, c_aqua, 96);
		
		switch(cardNoMechanicIndex)
		{
			case -1:
				break;
			case 0:
				break;
			case 1:
				obj_cardControl.deckForThisRound = AddBackIntoDeck(obj_cardControl.deckForThisRound, cardNoValue1, cardID, cardImg, cardText, int64(cardInstantRest) + cardNoValue2);
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
		
		switch(cardNoImgInd)
		{
			case "0":
				obj_player.sprite_index = sSleeping;
				obj_player.image_index = 0;
				obj_player.image_speed = .5;
				break;
				
			case "1":
				obj_player.sprite_index = sSitUp;
				obj_player.image_index = 0;
				obj_player.image_speed = 1;
				break;
				
			case "2":
				obj_player.sprite_index = sSitUp2;
				obj_player.image_index = 0;
				obj_player.image_speed = 1;
				break;
				
			case "3":
				obj_player.sprite_index = sLeaveBed;
				obj_player.image_index = 0;
				obj_player.image_speed = 1;
				break;
		}
		
	}
	else if (keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D")))
	{
		obj_cardControl.rest += cardYesRest;
		
		SpawnText(room_width / 2 - 96 + floor(random(192)), room_height - 48, fnt_cardText, string(cardYesRest), 1.5, c_aqua, 96);
		
		switch(cardYesMechanicIndex)
		{
			case -1:
				break;
			case 0:
				break;
			case 1:
				obj_cardControl.deckForThisRound = AddBackIntoDeck(obj_cardControl.deckForThisRound, cardYesValue1, cardID, cardImg, cardText, int64(cardInstantRest) + cardYesValue2);
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
		
		switch(cardYesImgInd)
		{
			case "0":
				obj_player.sprite_index = sSleeping;
				obj_player.image_index = 0;
				obj_player.image_speed = .5;
				break;
				
			case "1":
				obj_player.sprite_index = sSitUp;
				obj_player.image_index = 0;
				obj_player.image_speed = 1;
				break;
				
			case "2":
				obj_player.sprite_index = sSitUp2;
				obj_player.image_index = 0;
				obj_player.image_speed = 1;
				break;
				
			case "3":
				obj_player.sprite_index = sLeaveBed;
				obj_player.image_index = 0;
				obj_player.image_speed = 1;
				break;
		}
	}
}