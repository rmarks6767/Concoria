//Purpose: Draws The Player's Inventory Over the screen



//Borders space (Padding) The smaller the number, the thicker the border
xpad = 5
ypad = 4

//Inventory Coords
Invx1 = screenx + screenw/xpad
Invy1 = screeny + screenh/ypad
Invx2 = screenx + screenw - screenw/xpad
Invy2 = screeny + screenh - screenh/ypad

//Draw Inventory Background
draw_rectangle_color( Invx1 , Invy1 , Invx2 ,Invy2 , c_black, c_black, c_black,c_black,false);

//Title Coords
Titlex = Invx1 + (Invx2-Invx1)/2 - string_width("INVENTORY")/2;
Titley = Invy1

//Draw Title
draw_text_color(Titlex,Titley,"INVENTORY",c_white,c_white,c_white,c_white,255)

//Draw Buttons
