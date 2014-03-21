/**
*   Dist2D 
*   Implimentation of the Euclidian distance formula
*   Returns floating point for distance between two points
*/

x1 = argument0;
y1 = argument1;
x2 = argument2;
y2 = argument3;

sqx = sqr( x1 - x2 );
sqy = sqr( y1 - y2 );

return sqrt( sqx + sqy );
