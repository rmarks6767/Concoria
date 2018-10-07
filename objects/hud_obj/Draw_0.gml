screenx = camera_get_view_x(owner.view) //Just redefining the origin of the view
screeny = camera_get_view_y(owner.view)// For ease of typing
screenh = camera_get_view_width(owner.view)
screenw = camera_get_view_height(owner.view)

//show_debug_message("VIEW X AND Y: " + string(screenh) + "," + string(screenw))
//draw_rectangle_color(screenx, screeny, screenx + screenw , screeny + 100, c_black, c_black, c_black,c_black,false);

if owner.Inventory_Open == true {
    DrawInventory()
}


//Inventory

//Redefining the inventory coords here
thicc = 32 // This determines how thicc the inventory blocks are
invx1 = screenx + (screenw/1.5)
invy1 = screeny + (screenh - (screenh/3))
invx2 = invx1 + thicc
invy2 = invy1 + thicc

slot = owner.equipped;

for (i = 0; i < 5; i+=1){
    
    highlight = slot == i
    
	//Draw inventory rectangles here and highlight them appropriately
    if highlight == false{
    
		
        draw_rectangle_color(invx1 + i*40 , invy1 , invx2 + i*40 , invy2, c_black, c_black, c_black,c_black,true);
		
        
    }else{
    
        draw_rectangle_color(invx1 + i*40 , invy1 , invx2 + i*40 , invy2, c_white, c_white, c_white,c_white,true); 
    
    }
	
	//draw sprite icons
	draw_sprite_ext(GetWeaponIcon( owner.Inventory[i,0]) , 0, invx1 + i*40 ,invy1,0.5,0.5,0,c_white, 1 );

}


//Bars
barthicc = 6
barlen = 130

//health bar


hbarx1 = (screenx + screenw/10)
hbary1 = (screeny+ (screenh - (screenh/3)))
hbarx2 = hbarx1
hbary2 = hbary1 + barthicc



//bar
draw_rectangle_color(hbarx1 , hbary1 , hbarx2 + (barlen * (owner.Health/owner.Maxhealth)) , hbary2, c_green, c_green, c_green,c_green,false); 

//outline
draw_rectangle_color(hbarx1 , hbary1 , hbarx2 + barlen , hbary2, c_black, c_black, c_black,c_black,true); 


//armor bar


abarx1 = (screenx + screenw/10)
abary1 = hbary2
abarx2 = abarx1
abary2 = abary1 + barthicc



//bar
draw_rectangle_color(abarx1 , abary1 , abarx2 + (barlen * (owner.Armor/owner.Maxarmor)) , abary2, c_blue, c_blue, c_blue,c_blue,false); 

//outline
draw_rectangle_color(abarx1 , abary1 , abarx2 + barlen , abary2, c_black, c_black, c_black,c_black,true); 



//Energy bar


ebarx1 = (screenx + screenw/10)
ebary1 = abary2
ebarx2 = ebarx1
ebary2 = ebary1 + barthicc



//bar
draw_rectangle_color(ebarx1 , ebary1 , ebarx2 + (barlen * (owner.Energy/owner.Maxenergy)) , ebary2, c_yellow, c_yellow, c_yellow,c_yellow,false); 

//outline
draw_rectangle_color(ebarx1 , ebary1 , ebarx2 + barlen , ebary2, c_black, c_black, c_black,c_black,true); 


















