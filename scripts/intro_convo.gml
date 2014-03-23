draw_set_font ( gfont );
draw_set_color( c_black );

text1 = "Well, looks like we're gonna be here a while.";
text2 = "We're going to have to hunt for food.";
text3 = "Might as well teach ya to shoot.";
draw_text (50, room_height - (room_height/8), "Well, looks like we're gonna be here a while.");
while(!keyboard_check_pressed(vk_enter) and !mouse_check_button_pressed(1))
{
    draw_text (50, room_height - (room_height/8), text1);
}
while(!keyboard_check_pressed(vk_enter) and !mouse_check_button_pressed(1))
{
    draw_text (50, room_height - (room_height/8), text2);
}
while(!keyboard_check_pressed(vk_enter) and !mouse_check_button_pressed(1))
{
    draw_text (50, room_height - (room_height/8), text3);   
}

room = rm_introFight;

