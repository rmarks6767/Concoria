//Purpose: Drawing NPCS shops

//Screen values
var screenx1 = camera_get_view_x(view_camera[0])
var screeny1 = camera_get_view_y(view_camera[0])
var screenw = camera_get_view_width(view_camera[0])
var screenh = camera_get_view_height(view_camera[0])

//Second coord
var screenx2 = screenx1 + screenw
var screeny2 = screeny1 + screenh
var screenwMid = screenx1 + (screenw/2);

//Padding
var vertPad = 30;
var horPad = 100;

//Coords of actual menu
var menux1 = screenx1+horPad
var menuy1 = screeny1+vertPad
var menux2 = screenx2-horPad
var menuy2 = screeny2-vertPad


draw_rectangle_color(menux1,menuy1,menux2,menuy2,c_black,c_black,c_black,c_black,false);
draw_set_font(header1_font);
var spacing = 50;
draw_text_color( screenwMid - (string_width("Shop")/2),menuy1+20,"Shop",c_white,c_white,c_white,c_white,255);
for(var i = 0; i < array_length_1d(shopInventory); i++){
	var slotx1 = (menux1+10);
	var sloty1 = (menuy1+50) + (i*spacing);
	var slotx2 = slotx1+30;
	var sloty2 = sloty1+30;
	draw_sprite_ext(GetWeaponIcon(shopInventory[i]),0,slotx1,sloty1,0.5,0.5,0,c_white,255)
	
}