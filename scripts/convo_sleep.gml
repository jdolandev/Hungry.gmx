var str, cstr;
str = "Would you like to sleep?";

cstr = string_copy(str, 1, pos);
draw_set_color( c_white );
draw_set_font( gfont );
draw_text( 160, room_height - (room_height / 8) - 32, cstr);

pos += 0.5;

if( pos >= string_length( str )){
    instance_create( 186, 416, obj_sleepy );
    instance_create( 282, 448, obj_no );
}
