low = argument0;  //Low point (exclusive)
high = argument1; //High point (exclusive)
compare = argument2; //Comparison value

if( compare > low && compare < high ){
    return true;
}
else{
    return false;
}
