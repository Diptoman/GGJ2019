/// @description Move to desig area
// You can write your code in this editor

if (arrowType == "Left")
{
	TweenFire(id, EaseOutQuad, 0, true, 0, .25, x__, x, x - 240);
	TweenFire(id, EaseOutQuad, 0, true, 0, .25, image_alpha__, 0, 1);
}

if (arrowType == "Right")
{
	TweenFire(id, EaseOutQuad, 0, true, 0, .25, x__, x, x + 240);
	TweenFire(id, EaseOutQuad, 0, true, 0, .25, image_alpha__, 0, 1);
}