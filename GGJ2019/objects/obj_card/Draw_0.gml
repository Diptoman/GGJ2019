/// @description Draw the card
// You can write your code in this editor
draw_self();

draw_set_font(fnt_cardText);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_color(c_white);

draw_text_ext(x, y + 64, cardText, -1, 168);

draw_text_ext(x, y - 120, string(cardInstantRest) + "%", -1, 168);