var weaponName = argument0
var weaponDirection = argument1
var attacking = argument2

var toReturn = 0

none[0] = nodraw
none[1] = nodraw
none[2] = nodraw
none[3] = nodraw
none[4] = template_arm_swing_l
none[5] = template_arm_swing_r
none[6] = template_arm_swing_f
none[7] = template_arm_swing_b

ironsword[0] = sword_iron_l
ironsword[1] = sword_iron_r
ironsword[2] = sword_iron_f
ironsword[3] = sword_iron_b
ironsword[4] = sword_iron_swing_l
ironsword[5] = sword_iron_swing_r
ironsword[6] = sword_iron_swing_f
ironsword[7] = sword_iron_swing_b

woodsword[0] = sword_wood_l
woodsword[1] = sword_wood_r
woodsword[2] = sword_wood_f
woodsword[3] = sword_wood_b
woodsword[4] = sword_wood_swing_l
woodsword[5] = sword_wood_swing_r
woodsword[6] = sword_wood_swing_f
woodsword[7] = sword_wood_swing_b

shortbow[0] = bow_short_l
shortbow[1] = bow_short_r
shortbow[2] = bow_short_f
shortbow[3] = bow_short_b
shortbow[4] = bow_short_pull_l
shortbow[5] = bow_short_pull_r
shortbow[6] = bow_short_pull_f
shortbow[7] = bow_short_pull_b

woodstaff[0] = staff_wood_l
woodstaff[1] = staff_wood_r
woodstaff[2] = staff_wood_f
woodstaff[3] = staff_wood_b
woodstaff[4] = staff_wood_swing_l
woodstaff[5] = staff_wood_swing_r
woodstaff[6] = staff_wood_swing_f
woodstaff[7] = staff_wood_swing_b

switch(weaponName){

	case "":
		toReturn = none;
		break;

	case "Iron Sword":
		toReturn = ironsword;
		break;
		
	case "Wooden Sword":
		toReturn = woodsword;
		break;
	
	case "Short Bow":
		toReturn = shortbow;
		break;
		
	case "Wooden Staff":
		toReturn = woodstaff;
		break;


}

if (!attacking){
	
	switch(weaponDirection){
		
		case "left":
			return toReturn[0];
			break;
		
		case "right":
			return toReturn[1];
			break;
		
		case "down":
			return toReturn[2];
			break;
		
		case "up":
			return toReturn[3];
			break;
		
		
		
	}
	
	
}
else{
	
	switch(weaponDirection){
		
		case "left":
			return toReturn[4];
			break;
		
		case "right":
			return toReturn[5];
			break;
		
		case "down":
			return toReturn[6];
			break;
		
		case "up":
			return toReturn[7];
			break;
		
		
		
	}
	
	
	
}