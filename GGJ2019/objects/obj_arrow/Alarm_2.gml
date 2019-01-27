/// @description Selected
// You can write your code in this editor

if (arrowType == "Left")
{
	TweenFire(id, EaseOutQuad, 0, true, 0, .5, x__, x, -200);
}
else
{
	TweenFire(id, EaseOutQuad, 0, true, 0, .5, x__, x, room_width + 200);
}
TweenFire(id, EaseOutQuad, 0, true, 0, .5, image_alpha__, 1, 0);

alarm[1] = room_speed * .5;