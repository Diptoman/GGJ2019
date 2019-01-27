/// @description Draw the card
// You can write your code in this editor
draw_self();

draw_set_font(fnt_cardText);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_color(c_white);

draw_text_ext(x, y + 64, cardText, -1, 168);

draw_text_ext(x + 16, y - 108, string(int64(cardInstantRest) * obj_cardControl.penaltyModifier) + "%", -1, 164);

draw_sprite_ext(spr_uisit, 0, x - 16, y - 108, 1, 1, 0, c_white, image_alpha);

draw_sprite_ext(spr_cardimgs, cardImg, x, y - 32, 1, 1, 0, c_white, image_alpha);