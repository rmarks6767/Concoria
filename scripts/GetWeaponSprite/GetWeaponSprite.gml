weaponName = argument0
weaponDirection = argument1
attacking = argument2

if attacking == false{ //not attacking
	switch(weaponName){
	
		case "":
			switch(weaponDirection){
		
				case "left":
				
					return nodraw
					break;
				
				case "right":
			
					return nodraw
					break;
			
				case "up":
			
					return nodraw
					break;
			
				case "down":
			
					return nodraw
					break;
				
			}
			break;
		case "Iron Sword":
			switch(weaponDirection){
		
				case "left":
				
					return sword_iron_l
					;
				
				case "right":
			
					return sword_iron_r
					break;
			
				case "up":
			
					return sword_iron_b
					break;
			
				case "down":
			
					return sword_iron_f
					break;
				
			}
			break;
	
	
	
	}
}
else{ //attacking
	
	switch(weaponName){
	
		case "":
			switch(weaponDirection){
		
				case "left":
				
					return template_arm_swing_l;
					break;
				
				case "right":
			
					return template_arm_swing_r;
					break;
			
				case "up":
			
					return template_arm_swing_b
					break
			
				case "down":
			
					return template_arm_swing_f;
					break;
				
			}
			break	
		case "Iron Sword":
			switch(weaponDirection){
		
				case "left":
				
					return sword_iron_swing_l
					;
				
				case "right":
			
					return sword_iron_swing_r
					break;
			
				case "up":
			
					return sword_iron_swing_b
					break;
			
				case "down":
			
					return sword_iron_swing_f
					break;
				
			}
			break;
	
	
	
	}
	
}