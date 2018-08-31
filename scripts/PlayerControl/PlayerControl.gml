image_speed = 0.5

equipped = FindEquippedSlot()
//Sprite Handling   
if Inventory[equipped,0] == ""{ //IF NOTHING IS EQUIPPED...
    if attacking == false {
        if speed > 0{
            
            //LEFT
            if GetMouseDirection() == "left"{
            
                sprite_index = template_move_l 
                
            //RIGHT
            }else if GetMouseDirection() == "right"{
            
                sprite_index = template_move_r
            
            //UP
            }else if GetMouseDirection() == "up"{
            
                sprite_index = template_move_b
            
            //DOWN
            }else if GetMouseDirection() == "down"{
            
                sprite_index = template_move_f
            }
        }else{
            
            //LEFT
            if GetMouseDirection() == "left"{
            
                sprite_index = template_idle_l 
                
            //RIGHT
            }else if GetMouseDirection() == "right"{
            
                sprite_index = template_idle_r
            
            //UP
            }else if GetMouseDirection() == "up"{
            
                sprite_index = template_idle_b
            
            //DOWN
            }else if GetMouseDirection() == "down"{
            
                sprite_index = template_idle_f
            
            }
        }
    }else{
        if speed > 0{
            
            //LEFT
            if GetMouseDirection() == "left"{
            
                sprite_index = template_move_attack_l 
                
            //RIGHT
            }else if GetMouseDirection() == "right"{
            
                sprite_index = template_move_attack_r
            
            //UP
            }else if GetMouseDirection() == "up"{
            
                sprite_index = template_move_attack_b
            
            //DOWN
            }else if GetMouseDirection() == "down"{
            
                sprite_index = template_move_attack_f
            }
        }else{
            show_debug_message("CONDITION MET")
            //LEFT
            if GetMouseDirection() == "left"{
            
                sprite_index = template_idle_attack_l 
                
            //RIGHT
            }else if GetMouseDirection() == "right"{
            
                sprite_index = template_idle_attack_r
            
            //UP
            }else if GetMouseDirection() == "up"{
            
                sprite_index = template_idle_attack_b
            
            //DOWN
            }else if GetMouseDirection() == "down"{
            
                sprite_index = template_idle_attack_f
            
            }
        }

    }
}else{
    if speed > 0{
        //LEFT
        if GetMouseDirection() == "left"{
        
            sprite_index = template_move_attack_l 
            
        //RIGHT
        }else if GetMouseDirection() == "right"{
        
            sprite_index = template_move_attack_r
        
        //UP
        }else if GetMouseDirection() == "up"{
        
            sprite_index = template_move_attack_b
        
        //DOWN
        }else if GetMouseDirection() == "down"{
        
            sprite_index = template_move_attack_f
        }
    }else{
        
        //LEFT
        if GetMouseDirection() == "left"{
        
            sprite_index = template_idle_attack_l 
            
        //RIGHT
        }else if GetMouseDirection() == "right"{
        
            sprite_index = template_idle_attack_r
        
        //UP
        }else if GetMouseDirection() == "up"{
        
            sprite_index = template_idle_attack_b
        
        //DOWN
        }else if GetMouseDirection() == "down"{
        
            sprite_index = template_idle_attack_f
        
        }
    }


}
//KEYPRESS MOVEMENT

    //LEFT
    if keyboard_check_pressed(ord("A")){
        

        direction = 180
        speed = 5
        friction = 0
        
    //RIGHT
    }else if keyboard_check_pressed(ord("D")){
    

        direction = 0
        speed = 5
        friction = 0
        
    //UP
    }else if keyboard_check_pressed(ord("W")){
    

        direction = 90
        speed = 5
        friction = 0

        
    //DOWN
    }else if keyboard_check_pressed(ord("S")){
    

        direction = 270
        speed = 5
        friction = 0
    }


//KEYRELEASE

    if keyboard_check_released(ord("A")) and not MovingKeyDown(){


        direction = 180
        friction = .5
        
        
    }else if keyboard_check_released(ord("D")) and not MovingKeyDown(){
    

        direction = 0
        friction = .5
    
    }else if keyboard_check_released(ord("W")) and not MovingKeyDown(){
    

        direction = 90
        friction = .5
    
    }else if keyboard_check_released(ord("S")) and not MovingKeyDown(){
    

        direction = 270
        friction = .5
    
    }
    
    
//ATTACK

    if mouse_check_button_pressed(mb_left){
        
        if attacking == false{
        
            attacking = true
            show_debug_message("attacking")
            
        }
        
    }
    

//INVENTORY

    if keyboard_check_pressed(ord("E")){
        
        if Inventory_Open == false{
        
            Inventory_Open = true
            
        }else{
        
            Inventory_Open = false
        
        }
        
    }
    
//Equip

    if keyboard_check_pressed(ord("1")){
        
        PlayerUnequipAll()
        Inventory[0,3] = true
        
    }else if keyboard_check_pressed(ord("2")){
    
        PlayerUnequipAll()
        Inventory[1,3] = true
    
    }else if keyboard_check_pressed(ord("3")){
    
        PlayerUnequipAll()
        Inventory[2,3] = true
    
    }else if keyboard_check_pressed(ord("4")){
    
        PlayerUnequipAll()
        Inventory[3,3] = true
    
    }else if keyboard_check_pressed(ord("5")){
    
        PlayerUnequipAll()
        Inventory[4,3] = true
    }
//Scrollwheel

//Scrollup

if mouse_wheel_up(){

    PlayerUnequipAll()
    
    if equipped == 4 {
    
        
        Inventory[0,3] = true
    
    }else{
        
       Inventory[equipped+1,3] = true
    
    }

}

//Scroll Down
if mouse_wheel_down(){

    PlayerUnequipAll()
    
    if equipped == 0 {
    
        
        Inventory[4,3] = true
    
    }else{
        
       Inventory[equipped-1,3] = true
    
    }

}


