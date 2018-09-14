//Purpose: Control The movement of the arm object

//Set Angle of arm
image_angle = arm_angle;



//Keep the Arm Attached to the player when he moves
if player.speed == 0{

    x = player.x
    y = player.y
    
}
else{

    //RIGHT
    if player.direction == 0{
    
        x = player.x + player.speed;
        y = player.y;
    
    //UP
    }else if player.direction == 90{
    
        x = player.x;
        y = player.y - player.speed;
        
    //LEFT
    }else if player.direction == 180{
    
        x = player.x - player.speed;
        y = player.y;
        
    //DOWN
    }else if player.direction == 270{
    
        x = player.x ;
        y = player.y + player.speed;
    
    }
    
}


//Grab the equipped item's name from the inventory and store it in the arm
with(player){
    other.itemholding = Inventory[FindEquippedSlot(),0];
}




//Stop animating when weapon changes

if keyboard_check_pressed(ord("1")){
    
    sprite_index = nodraw;
    
}else if keyboard_check_pressed(ord("2")){

    sprite_index = nodraw;

}else if keyboard_check_pressed(ord("3")){

    sprite_index = nodraw;

}else if keyboard_check_pressed(ord("4")){

    sprite_index = nodraw;
	
}else if keyboard_check_pressed(ord("5")){

    sprite_index = nodraw;
}
    

if mouse_wheel_up(){

    sprite_index = nodraw;
    
}

if mouse_wheel_down(){

    sprite_index = nodraw;

}
