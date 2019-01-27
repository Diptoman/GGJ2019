/// @description Insert description here
// You can write your code in this editor

draw_set_color(make_color_rgb(179, 196, 221));
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_font(fnt_biggerText);
draw_set_alpha(1);
draw_text_outline(room_width / 2, room_height / 2 - 128, "Sleep, Please", 4, c_black, 4);

draw_set_font(fnt_bigText);
draw_set_color(c_black);
draw_text(room_width / 2, room_height / 2 - 16, "Press any key to start");

global.scr = 0;
global.hiscore = 0;

if (keyboard_check_pressed(vk_anykey))
{
	room_goto(rm_main);
}