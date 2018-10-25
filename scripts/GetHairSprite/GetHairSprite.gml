//Purpose: Return the proper sprite based on the caller's direction and hair type(hairNum)
var callerDirection = argument0;
var callerHairNum = argument1;

hair0[0] = hair0_l;
hair0[1] = hair0_r;
hair0[2] = hair0_f;
hair0[3] = hair0_b;

hair1[0] = hair1_l;
hair1[1] = hair1_r;
hair1[2] = hair1_f;
hair1[3] = hair1_b;
	
hair2[0] = hair2_l;
hair2[1] = hair2_r;
hair2[2] = hair2_f;
hair2[3] = hair2_b;

//Array that will be returned
var toReturn = 0;

switch(callerHairNum){
	
	case 0:
		toReturn = hair0;
		break;
	
	case 1:
		toReturn = hair1;
		break;
		
	case 2:
		toReturn = hair2;
		break;
		
}

switch(callerDirection){
	
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
	
	