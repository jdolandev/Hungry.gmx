var str, cstr;
str[9,0] = "Hey bud, you want to go out hunting?";
str[9,1] = "We can put up a pelt on the wall back home!";
str[9,2] = "I'm ready to get back out there and get it done!";
str[8,0] = "I heard a story about some people who were so hungry they ate each other.";
str[8,1] = "Hey man, we might wanna go hunting today.";
str[8,2] = "Is it true that there are tigers in these forests?";
str[7,0] = "You seem a little thin man. Go hunt some more meat!";
str[7,1] = "That locker can hold a lot more than we got in there.";
str[7,2] = "The snow has been a little heavier lately, hasn’t it?";
str[6,0] = "We really should…..try to hunt.";
str[6,1] = "Those damn rabbits are so quick….we’ve gotta focus to kill them.";
str[6,2] = "There are some weird scratches on the side of the truck that weren’t there yesterday.";
str[5,0] = "That meat locker's starting to look a little empty, huh?";
str[5,1] = "We should get out there and hunt while we can.";
str[5,2] = "Rabbit bones are really crunchy...can’t complain though.";
str[4,0] = "Have you been having any trouble hunting lately?";
str[4,1] = "I wonder how many people have actually eaten others…";
str[4,2] = "How many bullets have you got left?";
str[3,0] = "I dreamed about your father last night. I wonder if he’s had any more luck than us…";
str[3,1] = "Have you seen any game lately? The forest is awfully empty…";
str[3,2] = "Sorry I haven’t been helping out too much. I’m pretty unlucky.";
str[2,0] = "Hey, I found an extra bullet under my bed last night.  Here, you can have it.";
str[2,1] = "All we can do is hunt.";
str[2,2] = "We shouldn't have came.";
str[1,0] = "There's nothing left here.";
str[1,1] = "The hunger’s gone....";
str[1,2] = "The hunger's gone....";
str[0,0] = "Save yourself...";
str[0,1] = "......";
str[0,2] = "......";

level=ceil(global.status-1);

cstr = string_copy(str[level,whichstring], 1, pos);
draw_set_color( c_black );
draw_set_font( gfont );
draw_text( 50, room_height - (room_height / 8), cstr);

pos += 0.5;

if( pos >= string_length( str[level,whichstring] )){
    instance_create( 154, 448, obj_yes );
    instance_create( 282, 448, obj_no );
}
