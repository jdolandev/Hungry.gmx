var str, cstr;
str[0,0] = "Way to go, that’s a good take!";
str[0,1] = "You must’ve been practicing.";
str[0,2] = "What a crack shot, we’ll have enough for ages.";
str[1,0] = "I’m gonna have to step up my game with results like this.";
str[1,1] = "We should eat that meat while it’s still good.";
str[1,2] = "When do we get to eat each other??";
str[2,0] = "Man, I wish we weren’t stuck frying rabbit tail.";
str[2,1] = "Yum, meal time.";
str[2,2] = "How can you have any pudding if you don’t eat your meat?";
str[3,0] = "This too shall pass.";
str[3,1] = "The rabbits don’t take too kindly to gunshots.";
str[3,2] = "Great.  I just wish we had something other than rabbit for once.";
str[4,0] = "Sometimes I feel kinda bad for the rabbits, you know?";
str[4,1] = "Soon we’re gonna have to eat more than rabbit meat.";
str[5,0] = "That doesn’t look like very much….";
str[5,1] = "Maybe if we can kill 20 rabbits…";
str[6,0] = "Does it smell in here to you?";
str[6,1] = "I think we’ve got enough for tomorrow.";
str[7,0] = "I couldn’t get my shots hitting today.";
str[7,1] = "The search dogs should bark soon..";
str[8,0] = "Did you catch anything...?";
str[9,0] = "......";

if (global.status>6)
{
    whichstring=irandom(2);
}
else if (global.status>2)
{
    whichstring=irandom(1);
} else
{
    whichstring=0;
}
level=ceil(global.status-1);

cstr = string_copy(str[level,whichstring], 1, pos);
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
