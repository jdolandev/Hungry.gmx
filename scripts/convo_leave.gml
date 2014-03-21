var str, cstr;
str = "Hey bud, you want to go out hunting?";
cstr = string_copy(str, 1, pos);
draw_set_color( c_black );
draw_set_font( gfont );
draw_text( 64, room_height - (room_height / 8), cstr);

pos += 0.5;
