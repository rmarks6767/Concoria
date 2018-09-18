armDirection = argument0

if armFrame < 7 {
		
	if !alarm[0]{
		
		alarm[0] = 2;
		
	}
		
}


if armDirection == "left"{
	
	switch(armFrame){
		case 0:
			image_angle = -90;
			break;
		case 1:
			image_angle = -45;
			break;
		case 3:
			image_angle = 0;
			break;
		case 4:
			image_angle = 45;
			break;
		case 5:
			image_angle = 45;
			break;
		case 6:
			image_angle = 45;
			break;
		default:
			image_angle = 0;
		
	}

	
}
else if armDirection == "right"{
	
	switch(armFrame){
		case 0:
			image_angle = 90;
			break;
		case 1:
			image_angle = 45;
			break;
		case 3:
			image_angle = 0;
			break;
		case 4:
			image_angle = -45;
			break;
		case 5:
			image_angle = -45;
			break;
		case 6:
			image_angle = -45;
			break;
		default:
			image_angle = 0;
		
	}
	
}
else if armDirection == "up"{
	
	switch(armFrame){
		case 0:
			image_angle = 90;
			break;
		case 1:
			image_angle = 45;
			break;
		case 3:
			image_angle = 0;
			break;
		case 4:
			image_angle = -45;
			break;
		case 5:
			image_angle = -45;
			break;
		case 6:
			image_angle = -45;
			break;
		default:
			image_angle = 0;
		
	}
	
}
else if armDirection == "down"{
	
	switch(armFrame){
		case 0:
			image_angle = 90;
			break;
		case 1:
			image_angle = 45;
			break;
		case 3:
			image_angle = 0;
			break;
		case 4:
			image_angle = -45;
			break;
		case 5:
			image_angle = -45;
			break;
		case 6:
			image_angle = -45;
			break;
		default:
			image_angle = 0;
		
	}
	
}