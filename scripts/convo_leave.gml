var str, cstr;
str = "Hey bud, you want to go out hunting?";
cstr = string_copy(str, 1, pos);
draw_set_color( c_black );
draw_set_font( gfont );
draw_text( 90, room_height - (room_height / 8), cstr);

pos += 0.5;

if( pos >= string_length( str )){
    instance_create( 154, 448, obj_yes );
    instance_create( 282, 448, obj_no );
}
