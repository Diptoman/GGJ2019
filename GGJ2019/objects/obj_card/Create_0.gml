/// @description Init
// You can write your code in this editor

image_index = 0;
cardID = 0;
cardText = "";
cardYesText = "";
cardNoText = "";
cardYesMechanicIndex = -1;
cardYesRest = 0;
cardYesValue1 = 0;
cardYesValue2 = 0;
cardYesValue3 = 0;
cardNoMechanicIndex = -1;
cardNoRest = 0;
cardNoValue1 = 0;
cardNoValue2 = 0;
cardNoValue3 = 0;

alarm[0] = 1;

TweenFire(id, EaseInOutQuad, 0, true, 0, .5, y__, room_height + 480, room_height / 2 - 100);
TweenFire(id, EaseOutQuad, 0, true, .5, .125, y__, room_height / 2 - 100, room_height / 2 - 50);
TweenFire(id, EaseInOutQuad, 0, true, 0, .5, image_alpha__, 0, 1);