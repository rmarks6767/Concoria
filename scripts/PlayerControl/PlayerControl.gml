equipped = FindEquippedSlot(self)

//Sprite,direction, and image speed handling

//UNEQIPPED
if Inventory[equipped,0] == ""{
	if attacking == false{
		if speed == 0{
	
		//Unequipped not attacking standing
			if GetMouseDirection() == "left"{
		
				lastDrawMode = drawMode;
				drawMode = DRAW.UNEQUIPPED_STAND_LEFT;
		
				if direction == 0{
		
			
					image_speed = -1
		
				}
				else{
			
					image_speed = 1

				}
			
			}
			else if GetMouseDirection() == "right"{
				
				lastDrawMode = drawMode;
				drawMode = DRAW.UNEQUIPPED_STAND_RIGHT;
		
				if direction == 180{
		
			
					image_speed = -1
		
				}
				else{
			
					image_speed = 1

				}
		
			}
			else if GetMouseDirection() == "up"{
				
				lastDrawMode = drawMode;
				drawMode = DRAW.UNEQUIPPED_STAND_BACK;
		
				if direction == 270{
		
			
					image_speed = -1
		
				}
				else{
			
					image_speed = 1

				}
		
			}
			else if GetMouseDirection() == "down"{
		
				lastDrawMode = drawMode;
				drawMode = DRAW.UNEQUIPPED_STAND_FRONT;
		
				if direction == 90{
		
			
					image_speed = -1
		
				}
				else{
			
					image_speed = 1

				}
		
			}

		}
		
		//Unequipped not attacking moving
		else{
	
			if GetMouseDirection() == "left"{
		
				lastDrawMode = drawMode;
				drawMode = DRAW.UNEQUIPPED_WALK_LEFT;
		
				if direction == 0{
		
			
					image_speed = -1
		
				}
				else{
			
					image_speed = 1

				}
			
		
		
	
	
			}
			else if GetMouseDirection() == "right"{
		
				lastDrawMode = drawMode;
				drawMode = DRAW.UNEQUIPPED_WALK_RIGHT;
		
				if direction == 180{
		
			
					image_speed = -1
		
				}
				else{
			
					image_speed = 1

				}
		
		
		
			}
			else if GetMouseDirection() == "up"{
		
				lastDrawMode = drawMode;
				drawMode = DRAW.UNEQUIPPED_WALK_BACK;
		
				if direction == 270{
		
			
					image_speed = -1
		
				}
				else{
			
					image_speed = 1

				}
		
			}
			else if GetMouseDirection() == "down"{
		
				lastDrawMode = drawMode;
				drawMode = DRAW.UNEQUIPPED_WALK_FRONT;
		
				if direction == 90{
		
			
					image_speed = -1
		
				}
				else{
			
					image_speed = 1

				}
		
		
			}

		}
		
	}
	//Unequipped attacking standing
	else{
		if speed == 0{
	
			if GetMouseDirection() == "left"{
		
				lastDrawMode = drawMode;
				drawMode = DRAW.UNEQUIPPED_ATTACK_STAND_LEFT;
		
				if direction == 0{
		
			
					image_speed = -1
		
				}
				else{
			
					image_speed = 1

				}
			
			}
			else if GetMouseDirection() == "right"{
		
					lastDrawMode = drawMode;
					drawMode = DRAW.UNEQUIPPED_ATTACK_STAND_RIGHT;
		
				if direction == 180{
		
			
					image_speed = -1
		
				}
				else{
			
					image_speed = 1

				}
		
			}
			else if GetMouseDirection() == "up"{
		
					lastDrawMode = drawMode;
					drawMode = DRAW.UNEQUIPPED_ATTACK_STAND_BACK;
		
				if direction == 270{
		
			
					image_speed = -1
		
				}
				else{
			
					image_speed = 1

				}
		
			}
			else if GetMouseDirection() == "down"{
		
					lastDrawMode = drawMode;
					drawMode = DRAW.UNEQUIPPED_ATTACK_STAND_FRONT;
		
				if direction == 90{
		
			
					image_speed = -1
		
				}
				else{
			
					image_speed = 1

				}
		
			}

		}
		//Unequipped attacking moving
		else{
	
			if GetMouseDirection() == "left"{
		
					lastDrawMode = drawMode;
					drawMode = DRAW.UNEQUIPPED_ATTACK_WALK_LEFT;
		
				if direction == 0{
		
			
					image_speed = -1
		
				}
				else{
			
					image_speed = 1

				}
			
		
		
	
	
			}
			else if GetMouseDirection() == "right"{
		
				lastDrawMode = drawMode;
				drawMode = DRAW.UNEQUIPPED_ATTACK_WALK_RIGHT;
		
				if direction == 180{
		
			
					image_speed = -1
		
				}
				else{
			
					image_speed = 1

				}
		
		
		
			}
			else if GetMouseDirection() == "up"{
		
				lastDrawMode = drawMode;
				drawMode = DRAW.UNEQUIPPED_ATTACK_WALK_BACK;
		
				if direction == 270{
		
			
					image_speed = -1
		
				}
				else{
			
					image_speed = 1

				}
		
			}
			else if GetMouseDirection() == "down"{
		
				lastDrawMode = drawMode;
				drawMode = DRAW.UNEQUIPPED_ATTACK_WALK_FRONT;
		
				if direction == 90{
		
			
					image_speed = -1
		
				}
				else{
			
					image_speed = 1

				}
			}
		}
	}
}
//EQUIPPED
else{
	
	if attacking == false{
		if speed == 0{
		
			//Equipped not attacking standing
			if GetMouseDirection() == "left"{
		
				lastDrawMode = drawMode;
				drawMode = DRAW.EQUIPPED_STAND_LEFT;
		
				if direction == 0{
		
			
					image_speed = -1
		
				}
				else{
			
					image_speed = 1

				}
	
			}
			else if GetMouseDirection() == "right"{
		
				lastDrawMode = drawMode;
				drawMode = DRAW.EQUIPPED_STAND_RIGHT;
		
				if direction == 180{
		
			
					image_speed = -1
		
				}
				else{
			
					image_speed = 1

				}
		
		
		
			}
			else if GetMouseDirection() == "up"{
		
				lastDrawMode = drawMode;
				drawMode = DRAW.EQUIPPED_STAND_BACK;
		
				if direction == 270{
		
			
					image_speed = -1
		
				}
				else{
			
					image_speed = 1

				}
		
			}
			else if GetMouseDirection() == "down"{
		
				lastDrawMode = drawMode;
				drawMode = DRAW.EQUIPPED_STAND_FRONT;
		
				if direction == 90{
		
			
					image_speed = -1
		
				}
				else{
			
					image_speed = 1

				}
		
			}

		}
		//Equipped not attacking moving
		else{
	
			if GetMouseDirection() == "left"{
		
				lastDrawMode = drawMode;
				drawMode = DRAW.EQUIPPED_WALK_LEFT;
		
				if direction == 0{
		
			
					image_speed = -1
		
				}
				else{
			
					image_speed = 1

				}
			
			}
			else if GetMouseDirection() == "right"{
		
				lastDrawMode = drawMode;
				drawMode = DRAW.EQUIPPED_WALK_RIGHT;
		
				if direction == 180{
		
			
					image_speed = -1
		
				}
				else{
			
					image_speed = 1

				}
		
		
		
			}
			else if GetMouseDirection() == "up"{
		
				lastDrawMode = drawMode;
				drawMode = DRAW.EQUIPPED_WALK_BACK;
		
				if direction == 270{
		
			
					image_speed = -1
		
				}
				else{
			
					image_speed = 1

				}
		
			}
			else if GetMouseDirection() == "down"{
		
				lastDrawMode = drawMode;
				drawMode = DRAW.EQUIPPED_WALK_FRONT;
		
				if direction == 90{
		
			
					image_speed = -1
		
				}
				else{
			
					image_speed = 1

				}
		
		
			}
	
		}
				
	}
	else{
		if speed == 0{
		
			//Equipped attacking standing
			if GetMouseDirection() == "left"{
		
				lastDrawMode = drawMode;
				drawMode = DRAW.EQUIPPED_ATTACK_STAND_LEFT;
		
				if direction == 0{
		
			
					image_speed = -1
		
				}
				else{
			
					image_speed = 1

				}
	
			}
			else if GetMouseDirection() == "right"{
		
				lastDrawMode = drawMode;
				drawMode = DRAW.EQUIPPED_ATTACK_STAND_RIGHT;
		
				if direction == 180{
		
			
					image_speed = -1
		
				}
				else{
			
					image_speed = 1

				}
		
		
		
			}
			else if GetMouseDirection() == "up"{
		
				lastDrawMode = drawMode;
				drawMode = DRAW.EQUIPPED_ATTACK_STAND_BACK;
		
				if direction == 270{
		
			
					image_speed = -1
		
				}
				else{
			
					image_speed = 1

				}
		
			}
			else if GetMouseDirection() == "down"{
		
				lastDrawMode = drawMode;
				drawMode = DRAW.EQUIPPED_ATTACK_STAND_FRONT;
		
				if direction == 90{
		
			
					image_speed = -1
		
				}
				else{
			
					image_speed = 1

				}
		
			}

		}
		//Equipped attacking moving
		else{
	
			if GetMouseDirection() == "left"{
		
				lastDrawMode = drawMode;
				drawMode = DRAW.EQUIPPED_ATTACK_WALK_LEFT;
		
				if direction == 0{
		
			
					image_speed = -1
		
				}
				else{
			
					image_speed = 1

				}
			
			}
			else if GetMouseDirection() == "right"{
		
				lastDrawMode = drawMode;
				drawMode = DRAW.EQUIPPED_ATTACK_WALK_RIGHT;
		
				if direction == 180{
		
			
					image_speed = -1
		
				}
				else{
			
					image_speed = 1

				}
		
		
		
			}
			else if GetMouseDirection() == "up"{
		
				lastDrawMode = drawMode;
				drawMode = DRAW.EQUIPPED_ATTACK_WALK_BACK;
		
				if direction == 270{
		
			
					image_speed = -1
		
				}
				else{
			
					image_speed = 1

				}
		
			}
			else if GetMouseDirection() == "down"{
		
				lastDrawMode = drawMode;
				drawMode = DRAW.EQUIPPED_ATTACK_WALK_FRONT;
		
				if direction == 90{
		
			
					image_speed = -1
		
				}
				else{
			
					image_speed = 1

				}
		
		
			}
	
		}
			
		
	}
		
}


//KEYPRESS MOVEMENT
if !((keyboard_check(ord("A")) and keyboard_check(ord("W"))) 
or (keyboard_check(ord("A")) and keyboard_check(ord("S")))
or (keyboard_check(ord("D")) and keyboard_check(ord("W")))
or (keyboard_check(ord("D")) and keyboard_check(ord("S")))
){
    //LEFT
    if keyboard_check(ord("A")){
        
		
			direction = 180
			speed = 5
			
        
    //RIGHT
    }else if keyboard_check(ord("D")){
    

        direction = 0
        speed = 5

        
    //UP
    }else if keyboard_check(ord("W")){
    

        direction = 90
        speed = 5


        
    //DOWN
    }else if keyboard_check(ord("S")){
    

        direction = 270
        speed = 5

    }
}else if((keyboard_check(ord("A")) and keyboard_check(ord("W"))) 
or (keyboard_check(ord("A")) and keyboard_check(ord("S")))
or (keyboard_check(ord("D")) and keyboard_check(ord("W")))
or (keyboard_check(ord("D")) and keyboard_check(ord("S")))
){
	//LEFT
    if keyboard_check(ord("A"))and keyboard_check(ord("W")){
        

        direction = 135
        speed = 5

        
    //RIGHT
    }else if keyboard_check(ord("A"))and keyboard_check(ord("S")){
    

        direction = 225
        speed = 5

        
    //UP
    }else if keyboard_check(ord("D"))and keyboard_check(ord("W")){
    

        direction = 45
        speed = 5


        
    //DOWN
    }else if keyboard_check(ord("D"))and keyboard_check(ord("S")){
    

        direction = 315
        speed = 5

    }
}


//KEYRELEASE

    if keyboard_check_released(ord("A")) and not MovingKeyDown(){


        direction = 180
        speed = 0
        
        
    }else if keyboard_check_released(ord("D")) and not MovingKeyDown(){
    

        direction = 0
        speed = 0
    
    }else if keyboard_check_released(ord("W")) and not MovingKeyDown(){
    

        direction = 90
        speed = 0
    
    }else if keyboard_check_released(ord("S")) and not MovingKeyDown(){
    

        direction = 270
        speed = 0
    
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
        
		var object = instance_place(x,y,floorobject_obj);
		if instance_exists(object){
			
			if Inventory[equipped,0] == ""{
				
				Inventory[equipped,0] = object.name;
				Inventory[equipped,1] = object.quantity;
				Inventory[equipped,2] = object.type;
				instance_destroy(object);
			
			}
			
		}
        
    }
	
	//If we hit the drop key
	if keyboard_check_pressed(ord("Q")){
	
		//Store all of the important item info
		equippedItemName = Inventory[equipped,0]
		equippedItemQuantity = Inventory[equipped,1]
		equippedItemType = Inventory[equipped,2]
		
		//Make sure we aren't in an empty slot
		if (equippedItemName != "" and equippedItemQuantity >= 1){
			
			//If we are also hitting the key that makes us drop one item at a time
			if keyboard_check_pressed(vk_shift){
		
				//Spawn floor object and give it our important info
	            var object = instance_create_layer(x,y,"Instances",floorobject_obj);
				with(object){
				
					name = other.equippedItemName;
					type = other.equippedItemType;
					quantity += 1;
				
				}
				
				
				//If the single thing that we are dropping is the last item, empty our slot
				if (Inventory[equipped,1] - 1 == 0){
					Inventory[equipped,0] = "";
					Inventory[equipped,1] -= 1;
					Inventory[equipped,2] = "none";
					
				//If not just subtract one from our slot
				}else{
					
					Inventory[equipped,1] -= 1;

				}
			
			}
			//If we aren't hitting the single drop key
			else{
				//Spawn a floor object
				var object = instance_create_layer(x,y,"Instances",floorobject_obj);
				with(object){
					
					//Give it our important info
					name = other.equippedItemName;
					type = other.equippedItemType;
					quantity = other.equippedItemQuantity;
				
				}
			
				//Empty the inventory slot
				Inventory[equipped,0] = "";
				Inventory[equipped,1] = 0;
				Inventory[equipped,2] = "none";
			
			}
				
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
//reset image index

