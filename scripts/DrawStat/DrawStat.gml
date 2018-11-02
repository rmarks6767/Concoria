var thisX1 = argument0;
var thisY1 = argument1;
var thisX2 = argument2;
var thisY2 = argument3;
var color = argument4;
var stat  = argument5;
var statText = argument6;

draw_rectangle_color(thisX1,thisY1,thisX2,thisY2,color,color,color,color,true);
draw_set_font(header2_font);
draw_text_color(thisX1,thisY1,statText + ": " + string(stat),color,color,color,color,255);
