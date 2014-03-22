var str, cstr;
str = "Do you want to return home?";

cstr = string_copy(str, 1, pos);
draw_set_color( c_black );
draw_set_font( gfont );
draw_text( view_xview[0] + 128, view_yview[0] + (7 * (view_hport[0] / 8)), cstr);

pos += 0.5;

if( !instance_exists( obj_yes ) && !instance_exists( obj_no )){
    if( pos >= string_length( str )){
        instance_create( view_xview[0] + 144, view_yview[0] + (7 * (view_hport[0] / 8)) + 32, obj_yes );
        instance_create( view_xview[0] + 284, view_yview[0] + (7 * (view_hport[0] / 8)) + 32, obj_no );
    }
}
