//Purpose: Control The movement of the sword object

show_debug_message(string(image_speed))
//Keep the sword Attached to the player when he moves
if player.speed == 0{

    x = player.x
    y = player.y
    
}
else{

    //RIGHT
    if player.direction == 0{
    
        x = player.x + player.speed
        y = player.y
    
    //UP
    }else if player.direction == 90{
    
        x = player.x
        y = player.y - player.speed
        
    //LEFT
    }else if player.direction == 180{
    
        x = player.x - player.speed
        y = player.y
        
    //DOWN
    }else if player.direction == 270{
    
        x = player.x 
        y = player.y + player.speed
    
    }
    
}

//Grab the equipped item's name from the inventory and store it in the sword
with(player){
    other.itemholding = Inventory[FindEquippedSlot(),0]
}

if itemholding != "" {//if the equipped item is not empty

    if player.attacking == true{//if player is currently attacking
    
        image_speed = 1
        if GetMouseDirection() == "left"{

            sprite_index = sword_attack_l
            depth = 0

        }else if GetMouseDirection() == "right"{
        
            sprite_index = sword_attack_r
            depth = 0
        
        }else if GetMouseDirection() == "up"{
        
            sprite_index = sword_attack_b
            depth = 2
        
        }else if GetMouseDirection() == "down"{
        
            sprite_index = sword_attack_f
            depth = 0
        
        }
    
    
    }else{ //If player isn't attacking
        image_speed = 0
        if GetMouseDirection() == "left"{

            sprite_index = sword_idle_l
            depth = 0

        }else if GetMouseDirection() == "right"{
        
            sprite_index = sword_idle_r
            depth = 0
        
        }else if GetMouseDirection() == "up"{
        
            sprite_index = sword_idle_b
            depth = 2
        
        }else if GetMouseDirection() == "down"{
        
            sprite_index = sword_idle_f
            depth = 0
        
        }
    
    }


}

//Stop Animating at the end
if (image_index+image_speed >= image_number){
    sprite_index = nodraw
    show_debug_message("animation end")
}

//Stop animating when weapon changes

if keyboard_check_pressed(ord("1")){
    
    sprite_index = nodraw
    
}else if keyboard_check_pressed(ord("2")){

    sprite_index = nodraw

}else if keyboard_check_pressed(ord("3")){

    sprite_index = nodraw

}else if keyboard_check_pressed(ord("4")){

    sprite_index = nodraw
}else if keyboard_check_pressed(ord("5")){

    sprite_index = nodraw
}
    

if mouse_wheel_up(){

    sprite_index = nodraw
    
}

if mouse_wheel_down(){

    sprite_index = nodraw

}
