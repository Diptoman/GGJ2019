/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_font(fnt_bigText);
draw_text_outline(room_width / 2, room_height / 2, "You survived " + string(global.scr) + " night(s).", 4, c_black, 4);

if (global.scr == global.hiscore)
{
	draw_text_outline(room_width / 2, room_height / 2 + 32, "New High Score!", 4, c_black, 4);
}