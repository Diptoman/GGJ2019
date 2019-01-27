/// @description Do nothing
// You can write your code in this editor

arrowLeft.alarm[3] = 1;
arrowRight.alarm[3] = 1;

obj_cardControl.rest -= 10;
SpawnText(room_width / 2 - 96 + floor(random(192)), room_height - 48, fnt_cardText, -10, 1.5, c_aqua, 96);
		
obj_cardControl.alarm[0] = 2 * room_speed;
TweenFire(id, EaseOutQuad, 0, true, 0, .5, y__, y, - 200);
TweenFire(id, EaseOutQuad, 0, true, 0, .4, image_alpha__, 1, 0);
alarm[2] = room_speed;