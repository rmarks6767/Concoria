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
var spacing = 70;
draw_text_color( screenwMid - (string_width("Shop")/2),menuy1+20,"Shop",c_white,c_white,c_white,c_white,255);
for(var i = 0; i < array_height_2d(shop.shopInventory); i++){
	var slotx1 = (menux1+10) + (floor(i/5)*150);
	var sloty1 = (menuy1+90) + (((floor(i%5))*spacing));
	var slotx2 = slotx1+30;
	var sloty2 = sloty1+30;
	var itemName = shop.shopInventory[i,0];
	var itemPrice = shop.shopInventory[i,1];
	var itemSprite = GetWeaponIcon(itemName)
	draw_sprite_ext(itemSprite,0,slotx1,sloty1,0.5,0.5,0,c_white,255)
	draw_set_font(header2_font)
	draw_text_color(slotx1,sloty1-25,string(itemName) + ": $" + string(itemPrice),c_white,c_white,c_white,c_white,255)
	if mouse_check_button_pressed(mb_left){
		if (point_distance(mouse_x,mouse_y,slotx1 + (sprite_get_width(itemSprite)/4) ,sloty1 + (sprite_get_height(itemSprite)/4))<= 20){
			
			if (shop.currentCustomer != noone){

				if (shop.currentCustomer.Gold >= itemPrice){
					
					shop.currentCustomer.Gold -= itemPrice;
					
					show_debug_message("BOUGHT " + string(itemName) + " for " + string(itemPrice));
					PlayerBuyItem(shop.currentCustomer,itemName);
					
				}
				
			}
		}
	}
	
}
