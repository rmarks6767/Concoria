//Purpose: Control The movement of the arm object






//Keep the Arm Attached to the Player when he moves
//if owner.speed == 0{

    x = owner.x;
    y = owner.y;
    
//}
//else{

    x = x + lengthdir_x(owner.speed, owner.direction);
	y = y + lengthdir_y(owner.speed, owner.direction);
//}


//Grab the equipped item's name from the inventory and store it in the arm
with(owner){
	if objectName == "player"{
		other.itemholding = Inventory[FindEquippedSlot(self),0];
		other.itemholdingType = Inventory[FindEquippedSlot(self),2];
	}
	else{
		if (inBattle){
			other.itemholding = itemHolding[0];
		}else
		{
			other.itemholding = "";
		}
		other.itemholdingType = itemHolding[1];
	}
}





//Display arm at proper depth

if NumDirectionToString(owner.face_direction) == "left"{
		
	depth = 1
		
}
else if NumDirectionToString(owner.face_direction) == "right"{
		
	depth = -1
		
}
else if NumDirectionToString(owner.face_direction) == "up"{
	
	depth = 1
	
}
else if NumDirectionToString(owner.face_direction) == "down"{
		
	depth = -1
			
}

if owner.objectName == "player"{
	

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
	
	//sprite_index = GetWeaponSprite(itemholding,GetMouseDirection(),owner.attacking)
	
}

sprite_index = GetWeaponSprite(itemholding,NumDirectionToString(owner.face_direction),owner.attacking)

//Set attacking to false at end of animation
if (image_index+image_speed >= image_number){
	if owner.attacking == true{
		
		owner.attacking = false;
		
		if itemholdingType == "Bow"{
			var arw = instance_create_layer(owner.x,owner.y,"Instances",arrow_obj);
			with (arw){
			
				owner = other.owner
				direction = owner.face_direction;
				speed = 12;
				image_angle = direction - 90
		
			}
		}
		if itemholdingType == "Staff"{
			var ball = instance_create_layer(owner.x,owner.y,"Instances",spellball_obj);
			with (ball){
			
				owner = other.owner
				direction = owner.face_direction;
				speed = 12;
				image_angle = direction - 90
		
			}
		}
	}
}
