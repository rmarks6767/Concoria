if itemHolding[0] == ""{
	if attacking == false{
		if speed == 0{
	
		//Unequipped not attacking standing
			if NumDirectionToString(direction) == "left"{
		
				lastDrawMode = drawMode;
				drawMode = DRAW.UNEQUIPPED_STAND_LEFT;
		
				if direction == 0{
		
			
					image_speed = -1
		
				}
				else{
			
					image_speed = 1

				}
			
			}
			else if NumDirectionToString(direction) == "right"{
				
				lastDrawMode = drawMode;
				drawMode = DRAW.UNEQUIPPED_STAND_RIGHT;
		
				if direction == 180{
		
			
					image_speed = -1
		
				}
				else{
			
					image_speed = 1

				}
		
			}
			else if NumDirectionToString(direction) == "up"{
				
				lastDrawMode = drawMode;
				drawMode = DRAW.UNEQUIPPED_STAND_BACK;
		
				if direction == 270{
		
			
					image_speed = -1
		
				}
				else{
			
					image_speed = 1

				}
		
			}
			else if NumDirectionToString(direction) == "down"{
		
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
	
			if NumDirectionToString(direction) == "left"{
		
				lastDrawMode = drawMode;
				drawMode = DRAW.UNEQUIPPED_WALK_LEFT;
		
				if direction == 0{
		
			
					image_speed = -1
		
				}
				else{
			
					image_speed = 1

				}
			
		
		
	
	
			}
			else if NumDirectionToString(direction) == "right"{
		
				lastDrawMode = drawMode;
				drawMode = DRAW.UNEQUIPPED_WALK_RIGHT;
		
				if direction == 180{
		
			
					image_speed = -1
		
				}
				else{
			
					image_speed = 1

				}
		
		
		
			}
			else if NumDirectionToString(direction) == "up"{
		
				lastDrawMode = drawMode;
				drawMode = DRAW.UNEQUIPPED_WALK_BACK;
		
				if direction == 270{
		
			
					image_speed = -1
		
				}
				else{
			
					image_speed = 1

				}
		
			}
			else if NumDirectionToString(direction) == "down"{
		
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
	
			if NumDirectionToString(direction) == "left"{
		
				lastDrawMode = drawMode;
				drawMode = DRAW.UNEQUIPPED_ATTACK_STAND_LEFT;
		
				if direction == 0{
		
			
					image_speed = -1
		
				}
				else{
			
					image_speed = 1

				}
			
			}
			else if NumDirectionToString(direction) == "right"{
		
					lastDrawMode = drawMode;
					drawMode = DRAW.UNEQUIPPED_ATTACK_STAND_RIGHT;
		
				if direction == 180{
		
			
					image_speed = -1
		
				}
				else{
			
					image_speed = 1

				}
		
			}
			else if NumDirectionToString(direction) == "up"{
		
					lastDrawMode = drawMode;
					drawMode = DRAW.UNEQUIPPED_ATTACK_STAND_BACK;
		
				if direction == 270{
		
			
					image_speed = -1
		
				}
				else{
			
					image_speed = 1

				}
		
			}
			else if NumDirectionToString(direction) == "down"{
		
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
	
			if NumDirectionToString(direction) == "left"{
		
					lastDrawMode = drawMode;
					drawMode = DRAW.UNEQUIPPED_ATTACK_WALK_LEFT;
		
				if direction == 0{
		
			
					image_speed = -1
		
				}
				else{
			
					image_speed = 1

				}
			
		
		
	
	
			}
			else if NumDirectionToString(direction) == "right"{
		
				lastDrawMode = drawMode;
				drawMode = DRAW.UNEQUIPPED_ATTACK_WALK_RIGHT;
		
				if direction == 180{
		
			
					image_speed = -1
		
				}
				else{
			
					image_speed = 1

				}
		
		
		
			}
			else if NumDirectionToString(direction) == "up"{
		
				lastDrawMode = drawMode;
				drawMode = DRAW.UNEQUIPPED_ATTACK_WALK_BACK;
		
				if direction == 270{
		
			
					image_speed = -1
		
				}
				else{
			
					image_speed = 1

				}
		
			}
			else if NumDirectionToString(direction) == "down"{
		
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
			if NumDirectionToString(direction) == "left"{
		
				lastDrawMode = drawMode;
				drawMode = DRAW.EQUIPPED_STAND_LEFT;
		
				if direction == 0{
		
			
					image_speed = -1
		
				}
				else{
			
					image_speed = 1

				}
	
			}
			else if NumDirectionToString(direction) == "right"{
		
				lastDrawMode = drawMode;
				drawMode = DRAW.EQUIPPED_STAND_RIGHT;
		
				if direction == 180{
		
			
					image_speed = -1
		
				}
				else{
			
					image_speed = 1

				}
		
		
		
			}
			else if NumDirectionToString(direction) == "up"{
		
				lastDrawMode = drawMode;
				drawMode = DRAW.EQUIPPED_STAND_BACK;
		
				if direction == 270{
		
			
					image_speed = -1
		
				}
				else{
			
					image_speed = 1

				}
		
			}
			else if NumDirectionToString(direction) == "down"{
		
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
	
			if NumDirectionToString(direction) == "left"{
		
				lastDrawMode = drawMode;
				drawMode = DRAW.EQUIPPED_WALK_LEFT;
		
				if direction == 0{
		
			
					image_speed = -1
		
				}
				else{
			
					image_speed = 1

				}
			
			}
			else if NumDirectionToString(direction) == "right"{
		
				lastDrawMode = drawMode;
				drawMode = DRAW.EQUIPPED_WALK_RIGHT;
		
				if direction == 180{
		
			
					image_speed = -1
		
				}
				else{
			
					image_speed = 1

				}
		
		
		
			}
			else if NumDirectionToString(direction) == "up"{
		
				lastDrawMode = drawMode;
				drawMode = DRAW.EQUIPPED_WALK_BACK;
		
				if direction == 270{
		
			
					image_speed = -1
		
				}
				else{
			
					image_speed = 1

				}
		
			}
			else if NumDirectionToString(direction) == "down"{
		
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
			if NumDirectionToString(direction) == "left"{
		
				lastDrawMode = drawMode;
				drawMode = DRAW.EQUIPPED_ATTACK_STAND_LEFT;
		
				if direction == 0{
		
			
					image_speed = -1
		
				}
				else{
			
					image_speed = 1

				}
	
			}
			else if NumDirectionToString(direction) == "right"{
		
				lastDrawMode = drawMode;
				drawMode = DRAW.EQUIPPED_ATTACK_STAND_RIGHT;
		
				if direction == 180{
		
			
					image_speed = -1
		
				}
				else{
			
					image_speed = 1

				}
		
		
		
			}
			else if NumDirectionToString(direction) == "up"{
		
				lastDrawMode = drawMode;
				drawMode = DRAW.EQUIPPED_ATTACK_STAND_BACK;
		
				if direction == 270{
		
			
					image_speed = -1
		
				}
				else{
			
					image_speed = 1

				}
		
			}
			else if NumDirectionToString(direction) == "down"{
		
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
	
			if NumDirectionToString(direction) == "left"{
		
				lastDrawMode = drawMode;
				drawMode = DRAW.EQUIPPED_ATTACK_WALK_LEFT;
		
				if direction == 0{
		
			
					image_speed = -1
		
				}
				else{
			
					image_speed = 1

				}
			
			}
			else if NumDirectionToString(direction) == "right"{
		
				lastDrawMode = drawMode;
				drawMode = DRAW.EQUIPPED_ATTACK_WALK_RIGHT;
		
				if direction == 180{
		
			
					image_speed = -1
		
				}
				else{
			
					image_speed = 1

				}
		
		
		
			}
			else if NumDirectionToString(direction) == "up"{
		
				lastDrawMode = drawMode;
				drawMode = DRAW.EQUIPPED_ATTACK_WALK_BACK;
		
				if direction == 270{
		
			
					image_speed = -1
		
				}
				else{
			
					image_speed = 1

				}
		
			}
			else if NumDirectionToString(direction) == "down"{
		
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