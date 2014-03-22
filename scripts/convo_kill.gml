var str, cstr;
str = "You killed the rabbit. Took one pound of meat.";

cstr = string_copy(str, 1, 0);
draw_set_color(c_black);
draw_set_font(gfont);
draw_text(view_xview[0] + 128, view_yview[0] + (7 * (view_hport[0] / 8)), cstr);

