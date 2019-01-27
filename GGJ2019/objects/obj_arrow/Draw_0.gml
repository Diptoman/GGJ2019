/// @description Draw
// You can write your code in this editor

draw_self();
	
draw_set_font(fnt_cardText);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_color(c_black);
draw_set_alpha(image_alpha);

if (arrowType == "Right")
{
	image_xscale = -1;
	draw_text_ext(x, y + 1, "Yes", -1, 240);
}
if (arrowType == "Left")
{
	draw_text_ext(x, y + 1, "No", -1, 240);
}

draw_set_valign(fa_top);


draw_text_ext(x, y + 40, arrowText, -1, 240);