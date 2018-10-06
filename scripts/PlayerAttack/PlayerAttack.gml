armDirection = argument0

switch(armDirection){
	
	//show_debug_message("attacking: " + armDirection);
	case "left":
		sprite_index = template_arm_swing_l;
		break;
	
	case "right":
		sprite_index = template_arm_swing_r;
		break;
	
	case "up":
		sprite_index = template_arm_swing_b
		break;
	
	case "down":
		sprite_index = template_arm_swing_f;
		break;
	
}