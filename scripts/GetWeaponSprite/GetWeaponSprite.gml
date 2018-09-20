weaponName = argument0
weaponDirection = argument1
switch(weaponName){
	
	case "":
		switch(weaponDirection){
		
			case "left":
				
				return template_arm_l
				break
				
			case "right":
			
				return template_arm_r
				break
			
			case "up":
			
				return template_arm_b
				break
			
			case "down":
			
				return template_arm_f
				break
				
		}
		break	
	case "Iron Sword":
		switch(weaponDirection){
		
			case "left":
				
				return sword_iron_l
				break
				
			case "right":
			
				return sword_iron_r
				break
			
			case "up":
			
				return sword_iron_b
				break
			
			case "down":
			
				return sword_iron_f
				break
				
		}
		break
	
	
	
}