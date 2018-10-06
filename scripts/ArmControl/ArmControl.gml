//Purpose: Control The movement of the arm object






//Keep the Arm Attached to the Player when he moves
if owner.speed == 0{

    x = owner.x;
    y = owner.y;
    
}
else{

    //RIGHT
    if owner.direction == 0{
    
        x = owner.x + owner.speed;
        y = owner.y;
    
    //UP
    }else if owner.direction == 90{
    
        x = owner.x;
        y = owner.y - owner.speed;
        
    //LEFT
    }else if owner.direction == 180{
    
        x = owner.x - owner.speed;
        y = owner.y;
        
    //DOWN
    }else if owner.direction == 270{
    
        x = owner.x ;
        y = owner.y + owner.speed;
    
    }
    
}


//Grab the equipped item's name from the inventory and store it in the arm
with(owner){
    other.itemholding = Inventory[FindEquippedSlot(),0];
}


sprite_index = GetWeaponSprite(itemholding,GetMouseDirection(),owner.attacking)


//Display arm at proper depth
if GetMouseDirection() == "left"{
		
	depth = 1
		
}
else if GetMouseDirection() == "right"{
		
	depth = -1
		
}
else if GetMouseDirection() == "up"{
	
	depth = 1
	
}
else if GetMouseDirection() == "down"{
		
	depth = -1
			
}
	
	
	

	
//Set attacking to false at end of animation
if (image_index+image_speed >= image_number) {
	owner.attacking = false;
}
	
	



//Stop animating when weapon changes and update item holding

if keyboard_check_pressed(ord("1")){
    
    sprite_index = nodraw;
	itemholding = owner.Inventory[owner.equipped,0];
    
}else if keyboard_check_pressed(ord("2")){

    sprite_index = nodraw;
	itemholding = owner.Inventory[owner.equipped,0];

}else if keyboard_check_pressed(ord("3")){

    sprite_index = nodraw;
	itemholding = owner.Inventory[owner.equipped,0];

}else if keyboard_check_pressed(ord("4")){

    sprite_index = nodraw;
	itemholding = owner.Inventory[owner.equipped,0];
	
}else if keyboard_check_pressed(ord("5")){

    sprite_index = nodraw;
	itemholding = owner.Inventory[owner.equipped,0];
}
    

if mouse_wheel_up(){

    sprite_index = nodraw;
	itemholding = owner.Inventory[owner.equipped,0];
    
}

if mouse_wheel_down(){

    sprite_index = nodraw;
	itemholding = owner.Inventory[owner.equipped,0];

}
