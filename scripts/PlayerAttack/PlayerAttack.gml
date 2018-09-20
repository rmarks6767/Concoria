armDirection = argument0

if armFrame < 10 {
		
	if !alarm[0]{
		
		alarm[0] = 1;//THIS NUMBER SHOULD LATER BE ATTACHED TO PLAYER ATTACK SPEED STAT
		
	}
		
}


if armDirection == "left"{
	
	switch(armFrame){
		
		case 0:
			image_angle = -45;
			break;
			
		case 1:
			image_angle = -30;
			break;
			
		case 2:
			image_angle = -15
			break;
			
		case 3:
			image_angle = 0;
			break;
			
		case 4:
			image_angle = 15;
			break;
			
		case 5:
			image_angle = 30;
			break;
			
		case 6:
			image_angle = 45;
			break;
			
		case 7:
			image_angle = 60;
			break;
			
		case 8:
			image_angle = 60;
			break
			
		case 9:
			image_angle = 60;
			break;
			
		default:
			image_angle = 0;
		
	}

	
}
else if armDirection == "right"{
	
	switch(armFrame){
		
		case 0:
			image_angle = 45;
			break;
			
		case 1:
			image_angle = 30;
			break;
			
		case 2:
			image_angle = 15
			break;
			
		case 3:
			image_angle = 0;
			break;
			
		case 4:
			image_angle = -15;
			break;
			
		case 5:
			image_angle = -30;
			break;
			
		case 6:
			image_angle = -45;
			break;
			
		case 7:
			image_angle = -60;
			break;
			
		case 8:
			image_angle = -60;
			break
			
		case 9:
			image_angle = -60;
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
			image_angle = 75;
			break;
			
		case 2:
			image_angle = 60;
			break;
			
		case 3:
			image_angle = 45;
			break;
			
		case 4:
			image_angle = 30;
			break;
			
		case 5:
			image_angle = 15;
			break;
			
		case 6:
			image_angle = 0;
			break;
			
		case 7:
			image_angle = 0;
			break;
			
		case 8:
			image_angle = 0;
			break
			
		case 9:
			image_angle = 0;
			break;
			
		default:
			image_angle = 0;
		
	}
	
}
else if armDirection == "down"{
	
	switch(armFrame){
		
		case 0:
			image_angle = 30;
			break;
			
		case 1:
			image_angle = 45;
			break;
			
		case 2:
			image_angle = 60;
			break;
			
		case 3:
			image_angle = 75;
			break;
			
		case 4:
			image_angle = 90;
			break;
			
		case 5:
			image_angle = 105;
			break;
			
		case 6:
			image_angle = 120;
			break;
			
		case 7:
			image_angle = 135;
			break;
			
		case 8:
			image_angle = 150;
			break
			
		case 9:
			image_angle = 90;
			break;
			
		default:
			image_angle = 0;
		
	}
	
}