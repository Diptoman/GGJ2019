/// @description Draw
// You can write your code in this editor

draw_self();

if (arrowType == "Right")
	image_xscale = -1;
	
draw_set_font(fnt_cardText);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(c_black);
draw_set_alpha(image_alpha);

draw_text_ext(x, y + 40, arrowText, -1, 240);